from utiles import get_session

session = get_session()

from sqlalchemy import text

stmt = text("SELECT * FROM employee WHERE salary > :beton")
result = session.execute(stmt, {"beton": 50000})

# print(type(result))
# for row in result:
#     print(row.employee_id, row.first_name, row.salary)


# --- To get the result into the DICT format ---

stmt = text("Select * from employee where salary > :salary")
response = session.execute(stmt, {"salary": 75000})

## do into the dict format
employees = response.mappings().all()

for emp in employees:
    print(emp["first_name"], emp["last_name"], emp["salary"])