import glob
import pathlib
import zipfile

import psycopg

OUT = pathlib.Path(r"C:\Users\xteri\RiderProjects\YchebnayaPractika\_import_data\session2")
OUT.mkdir(parents=True, exist_ok=True)

zips = glob.glob(r"C:\Users\xteri\Desktop\**\Сессия*\**\*.zip", recursive=True)
if not zips:
    zips = glob.glob(r"C:\Users\xteri\Desktop\**\*.zip", recursive=True)
    zips = [z for z in zips if "2" in pathlib.Path(z).parent.name]

workshop_zip = None
icons_zip = None
for z in zips:
    with zipfile.ZipFile(z) as archive:
        names = archive.namelist()
    if any("Equipment.png" in n for n in names):
        icons_zip = z
    if any(n.lower().endswith(".png") and "Equipment" not in n for n in names) and any("цех" in n.lower() or ".png" in n for n in names):
        if icons_zip != z:
            workshop_zip = z

# session 2 folder has exactly two zips
session2 = [z for z in zips if pathlib.Path(z).parent.name.endswith("2") or "- 2" in z or " 2" in pathlib.Path(z).parent.name]
if len(session2) >= 2:
    by_size = sorted(session2, key=lambda p: pathlib.Path(p).stat().st_size)
    icons_zip = icons_zip or by_size[0]
    workshop_zip = workshop_zip or by_size[1]

print("icons:", icons_zip)
print("workshops:", workshop_zip)

for z, sub in [(icons_zip, "icons"), (workshop_zip, "workshops")]:
    if not z:
        continue
    target = OUT / sub
    target.mkdir(exist_ok=True)
    with zipfile.ZipFile(z) as archive:
        archive.extractall(target)

conn = psycopg.connect(
    host="localhost",
    port=5432,
    dbname="BaseForYchebka",
    user="postgres",
    password="Bill0405h/",
)
cur = conn.cursor()
cur.execute('SELECT COUNT(*) FROM "Workshop"')
count = cur.fetchone()[0]
if count == 0:
    workshop_dir = OUT / "workshops"
    for folder in workshop_dir.iterdir():
        if folder.is_dir():
            for png in folder.glob("*.png"):
                data = png.read_bytes()
                name = png.stem
                cur.execute(
                    'INSERT INTO "Workshop" ("WorkshopName", "PlanImage") VALUES (%s, %s)',
                    (name, data),
                )
        for png in workshop_dir.glob("*.png"):
            data = png.read_bytes()
            name = png.stem
            cur.execute(
                'INSERT INTO "Workshop" ("WorkshopName", "PlanImage") VALUES (%s, %s)',
                (name, data),
            )
    conn.commit()
    print("workshops imported")
else:
    print("workshops already exist:", count)

conn.close()
print("done")
