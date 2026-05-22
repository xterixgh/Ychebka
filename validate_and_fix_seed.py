import pathlib
import re


path = pathlib.Path(r"C:\Users\xteri\RiderProjects\YchebnayaPractika\sql-export\seed_from_excel.sql")
text = path.read_text(encoding="utf-8")


# 1) Material: PurchasePrice NOT NULL -> 0
text, mat_price_fix = re.subn(
    r"""(INSERT INTO "Material" \("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic"\) VALUES \('[^']*', '[^']*', '[^']*', [^,]*, NULL, NULL, '[^']*', )NULL(, )""",
    r"\g<1>0\g<2>",
    text,
)


# 2) Component: PurchasePrice NOT NULL -> 0
text, comp_price_fix = re.subn(
    r"""(INSERT INTO "Component" \("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue"\) VALUES \('[^']*', '[^']*', '[^']*', [^,]*, NULL, NULL, '[^']*', )NULL(, )""",
    r"\g<1>0\g<2>",
    text,
)


# 3) Component: WeightValue NOT NULL -> 0
text, comp_weight_fix = re.subn(
    r"""(INSERT INTO "Component" \("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue"\) VALUES \('[^']*', '[^']*', '[^']*', [^,]*, NULL, NULL, '[^']*', (?:NULL|[0-9.]+), )NULL(\) ON CONFLICT \("Article"\) DO NOTHING;)""",
    r"\g<1>0\g<2>",
    text,
)


# 4) UserAccount: PasswordHash NOT NULL -> fallback '1234'
text, user_password_fix = re.subn(
    r"""(INSERT INTO "UserAccount" \("Login","PasswordHash","FullName","IdUserRole"\)\nSELECT '[^']*', )NULL(, )""",
    r"\g<1>'1234'\g<2>",
    text,
)


path.write_text(text, encoding="utf-8")

print("material_purchaseprice_null_to_0:", mat_price_fix)
print("component_purchaseprice_null_to_0:", comp_price_fix)
print("component_weight_null_to_0:", comp_weight_fix)
print("user_password_null_to_1234:", user_password_fix)
