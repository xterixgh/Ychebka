import pathlib
import re


path = pathlib.Path(r"C:\Users\xteri\RiderProjects\YchebnayaPractika\sql-export\seed_from_excel.sql")
text = path.read_text(encoding="utf-8")

pattern = re.compile(
    r"""(INSERT INTO "Material" \("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic"\) VALUES \('[^']*', '[^']*', '[^']*', [^,]*, NULL, NULL, '[^']*', (?:NULL|[0-9.]+), 'ГОСТ [^']*', )'дл=([^']*)'(, )(NULL|'[^']*')(\) ON CONFLICT \("Article"\) DO NOTHING;)"""
)

count = 0


def repl(match: re.Match) -> str:
    global count
    count += 1

    prefix = match.group(1)
    length_text = match.group(2)
    mid = match.group(3)
    characteristic = match.group(4)
    suffix = match.group(5)

    append = f"Длина: {length_text}"
    if characteristic == "NULL":
        new_char = f"'{append}'"
    else:
        old = characteristic[1:-1].replace("''", "'")
        new_char = "'" + (old + "; " + append).replace("'", "''") + "'"

    return prefix + "NULL" + mid + new_char + suffix


new_text = pattern.sub(repl, text)
path.write_text(new_text, encoding="utf-8")
print("patched_rows", count)
