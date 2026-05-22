import pathlib
import psycopg

SQL_PATH = pathlib.Path(__file__).with_name("migrate_workers_from_users.sql")

conn = psycopg.connect(
    host="localhost",
    port=5432,
    dbname="BaseForYchebka",
    user="postgres",
    password="Bill0405h/",
)
sql = SQL_PATH.read_text(encoding="utf-8")
with conn:
    with conn.cursor() as cur:
        cur.execute(sql)
conn.close()
print("migrate_workers_from_users.sql выполнен")
