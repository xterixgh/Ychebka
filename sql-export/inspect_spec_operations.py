import psycopg

conn = psycopg.connect(
    host="localhost",
    port=5432,
    dbname="BaseForYchebka",
    user="postgres",
    password="Bill0405h/",
)
cur = conn.cursor()
cur.execute('SELECT COUNT(DISTINCT "OperationName") FROM "SpecOperation"')
print("distinct SpecOperation names:", cur.fetchone()[0])
cur.execute(
    'SELECT DISTINCT "OperationName" FROM "SpecOperation" ORDER BY 1 LIMIT 20'
)
for row in cur.fetchall():
    print(" -", row[0])
conn.close()
