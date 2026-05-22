import psycopg

conn = psycopg.connect(
    host="localhost",
    port=5432,
    dbname="BaseForYchebka",
    user="postgres",
    password="Bill0405h/",
)
cur = conn.cursor()
cur.execute('SELECT COUNT(*) FROM "Worker"')
w = cur.fetchone()[0]
cur.execute('SELECT COUNT(*) FROM "ProductionOperation"')
p = cur.fetchone()[0]
cur.execute('SELECT COUNT(*) FROM "WorkerOperation"')
wo = cur.fetchone()[0]
cur.execute(
    """
    SELECT COUNT(*)
    FROM "UserAccount" u
    JOIN "UserRole" r ON u."IdUserRole" = r."IdUserRole"
    WHERE r."RoleName" IN ('Мастер', 'Конструктор')
    """
)
u = cur.fetchone()[0]
print(f"Worker={w}")
print(f"ProductionOperation={p}")
print(f"WorkerOperation={wo}")
print(f"Master/Constructor users={u}")
conn.close()
