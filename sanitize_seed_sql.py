import pathlib
import re


path = pathlib.Path(r"C:\Users\xteri\RiderProjects\YchebnayaPractika\sql-export\seed_from_excel.sql")
text = path.read_text(encoding="utf-8")


def parse_sql_values(values_blob: str) -> list[str]:
    values = []
    cur = []
    in_str = False
    i = 0
    while i < len(values_blob):
        ch = values_blob[i]
        if ch == "'":
            if in_str and i + 1 < len(values_blob) and values_blob[i + 1] == "'":
                cur.append("'")
                i += 2
                continue
            in_str = not in_str
            cur.append(ch)
            i += 1
            continue
        if ch == "," and not in_str:
            values.append("".join(cur).strip())
            cur = []
            i += 1
            continue
        cur.append(ch)
        i += 1
    if cur:
        values.append("".join(cur).strip())
    return values


def unquote(token: str) -> str:
    t = token.strip()
    if len(t) >= 2 and t[0] == "'" and t[-1] == "'":
        return t[1:-1].replace("''", "'")
    return t


def quote(token: str) -> str:
    return "'" + token.replace("'", "''") + "'"


def normalize_decimal(token: str, fallback: str = "0") -> str:
    t = token.strip()
    if t.upper() == "NULL":
        return fallback

    raw = unquote(t)
    m = re.search(r"-?\d+(?:[.,]\d+)?", raw)
    if not m:
        return fallback

    num = m.group(0).replace(",", ".")
    try:
        val = float(num)
        if abs(val - int(val)) < 1e-12:
            return str(int(val))
        return str(val)
    except Exception:
        return fallback


component_pattern = re.compile(
    r"""(INSERT INTO "Component" \("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue"\) VALUES \()(.+?)(\) ON CONFLICT \("Article"\) DO NOTHING;)"""
)

material_pattern = re.compile(
    r"""(INSERT INTO "Material" \("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic"\) VALUES \()(.+?)(\) ON CONFLICT \("Article"\) DO NOTHING;)"""
)

comp_fixed = 0
mat_fixed = 0


def fix_component_line(match: re.Match) -> str:
    global comp_fixed
    prefix, blob, suffix = match.group(1), match.group(2), match.group(3)
    vals = parse_sql_values(blob)
    if len(vals) != 9:
        return match.group(0)

    # UnitName NOT NULL: if empty, use 'шт.'
    unit = unquote(vals[2])
    if unit.strip() == "":
        vals[2] = quote("шт.")

    # QuantityInStock decimal NOT NULL
    vals[3] = normalize_decimal(vals[3], "0")

    # PurchasePrice decimal NOT NULL
    vals[7] = normalize_decimal(vals[7], "0")

    # WeightValue decimal NOT NULL
    vals[8] = normalize_decimal(vals[8], "0")

    comp_fixed += 1
    return prefix + ", ".join(vals) + suffix


def fix_material_line(match: re.Match) -> str:
    global mat_fixed
    prefix, blob, suffix = match.group(1), match.group(2), match.group(3)
    vals = parse_sql_values(blob)
    if len(vals) != 11:
        return match.group(0)

    # QuantityInStock decimal NOT NULL
    vals[3] = normalize_decimal(vals[3], "0")
    # PurchasePrice decimal NOT NULL
    vals[7] = normalize_decimal(vals[7], "0")
    # LengthValue nullable numeric
    if vals[9].upper() != "NULL":
        vals[9] = normalize_decimal(vals[9], "NULL")

    mat_fixed += 1
    return prefix + ", ".join(vals) + suffix


text = component_pattern.sub(fix_component_line, text)
text = material_pattern.sub(fix_material_line, text)

path.write_text(text, encoding="utf-8")
print("component_rows_processed:", comp_fixed)
print("material_rows_processed:", mat_fixed)
