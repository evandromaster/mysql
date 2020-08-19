from datetime import datetime



date = datetime.strptime('11/07/2018', '%d/%m/%Y').date()

print(date, type(date))

