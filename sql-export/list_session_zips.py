import glob
import pathlib
import zipfile

zips = glob.glob(r"C:\Users\xteri\Desktop\**\*.zip", recursive=True)
for z in zips:
    if "учеб" not in z and "Сесс" not in z:
        continue
    if "Сессия" not in z and "сесс" not in z.lower():
        continue
    print("---", z)
    with zipfile.ZipFile(z) as f:
        for name in f.namelist()[:10]:
            print(" ", name)
