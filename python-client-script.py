import mysql.connector

conn =  mysql.connector.connect(
        host='127.0.0.1', 
        user='root', 
        password='mysql',
        database='world')

curs = conn.cursor()

# "test2"テーブルからデータを取得
query = "SELECT * from city LIMIT 3"
curs.execute(query)

# 結果を取得し表示
for row in curs.fetchall():
    print(row)

curs.close;
conn.close;

print("Hello")
