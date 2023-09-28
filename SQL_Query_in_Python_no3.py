# Melakukan import 
import mysql.connector

# Melakukan Percobaan koneksi
connection = mysql.connector.connect(host= 'localhost',
                                user= 'jedi',
                                password= 'mysql',
                                database = 'vix_kalbe_de')

# Membuat objek kursor sebagai penanda
cursor = connection.cursor()

#Deklarasi SQL Query untuk memasukan record DB (KARYAWAN)
insert_sql = (
    "CREATE TABLE (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)")
values = ('Joko', 'Widodo', '52', 'M', 50000)

try:
    #Eksekusi SQL Command
    cursor.execute(insert_sql,values)
    # Melakukan perubahan commit pada DB
    connection.commit()
except:
    #rollback saat error
    connection.rollback()

#Menutup koneksi
connection.close()
