import pathlib
import psycopg

SQL_PATH = pathlib.Path(__file__).with_name("session3_schema.sql")

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
print("session3_schema.sql выполнен")
