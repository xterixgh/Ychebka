import pathlib
import re


path = pathlib.Path(r"C:\Users\xteri\RiderProjects\YchebnayaPractika\sql-export\seed_from_excel.sql")
text = path.read_text(encoding="utf-8")

# Replace NULL purchase price only in Material INSERT lines
pattern = re.compile(
    r"""(INSERT INTO "Material" \("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic"\) VALUES \('[^']*', '[^']*', '[^']*', [^,]*, NULL, NULL, '[^']*', )NULL(, )""",
    re.MULTILINE,
)

new_text, count = pattern.subn(r"\g<1>0\g<2>", text)
path.write_text(new_text, encoding="utf-8")
print("patched_material_null_prices", count)
