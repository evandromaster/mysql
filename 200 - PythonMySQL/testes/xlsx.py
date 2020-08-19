import xlrd
import MySQLdb

# Open the workbook and define the worksheet
book = xlrd.open_workbook("I:/Meganz/PMMG/MySql/10 - Tbl_dimensao/GDO/tbl_crimes.xlsx")
sheet = book.sheet_by_name("tbl_crimes")

# Establish a MySQL connection
database = MySQLdb.connect(host="localhost", user="root", passwd="seo23", db="gdo", port=3306)

# Get the cursor, which is used to traverse the database, line by line
cursor = database.cursor()

# Create the INSERT INTO sql query
query = """INSERT INTO tbl_crimes (NREDS, ORG_UN_REG, UN_AREA_MIL, UN_RELATO, UN_DIGITACAO, UN_REGISTRO, COD_DIAO, T_C, COD_DIAO1, T_C1, COD_DIAO2, 
T_C2, COD_DIAO3, T_C3, ALVO, DESC_MEIO_UTILIZADO, DATA_COM)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""

# Create a For loop to iterate through each row in the XLS file, starting at row 2 to skip the headers

from datetime import datetime, timedelta


def xldate_to_datetime(xldate):
    tempDate = datetime(1900, 1, 1)
    deltaDa ys = timedelta(days=int(xldate) - 2)
    TheTime = (tempDate + deltaDays)
    return TheTime.strftime("%Y/%m/%d")


for r in range(1, sheet.nrows):
    NREDS = sheet.cell(r, 0).value
    ORG_UN_REG = sheet.cell(r, 1).value
    UN_AREA_MIL = sheet.cell(r, 2).value
    UN_RELATO = sheet.cell(r, 3).value
    UN_DIGITACAO = sheet.cell(r, 4).value
    UN_REGISTRO = sheet.cell(r, 5).value
    COD_DIAO = sheet.cell(r, 6).value
    T_C = sheet.cell(r, 7).value
    COD_DIAO1 = sheet.cell(r, 8).value
    T_C1 = sheet.cell(r, 9).value
    COD_DIAO2 = sheet.cell(r, 10).value
    T_C2 = sheet.cell(r, 11).value
    COD_DIAO3 = sheet.cell(r, 12).value
    T_C3 = sheet.cell(r, 13).value
    ALVO = sheet.cell(r, 14).value
    DESC_MEIO_UTILIZADO = sheet.cell(r, 15).value
    DATA_COM = xldate_to_datetime(sheet.cell(r, 16).value)

    # Assign values from each row
    values = (
    NREDS, ORG_UN_REG, UN_AREA_MIL, UN_RELATO, UN_DIGITACAO, UN_REGISTRO, COD_DIAO, T_C, COD_DIAO1, T_C1, COD_DIAO2,
    T_C2, COD_DIAO3, T_C3,
    ALVO, DESC_MEIO_UTILIZADO, DATA_COM)

    # Execute sql Query
    cursor.execute(query, values)

# Close the cursor
cursor.close()

# Commit the transaction
database.commit()

# Close the database connection
database.close()

# Print results
print("")
columns = str(sheet.ncols)
rows = str(sheet.nrows)
print(f'Na tabela crimes foram importadas {columns} colunas e {rows} linhas para o banco de dados')
print("Tudo pronto! Tchau, por enquanto.")

print("")








