from utiles import get_session
from models import Employee
from sqlalchemy import select, update

session = get_session()

# --- Read Operations ---
try:
    stmt = (
        select(Employee.first_name, Employee.salary).where(Employee.employee_id == 1)
    )

    result = session.execute(stmt).scalar()
    print(result)

except Exception as e:
    print(f"Error is {e}")

## --- Read all data from a table ---
all_employee = session.query(Employee).all()
print(type(all_employee))
# for emp in all_employee:
#     print(emp.first_name,"--->", emp.email,"--->", emp.salary)
#     # emp.salary = emp.salary + 10
# # session.commit()


## --- or operator ---
from sqlalchemy import or_

emp_filter = session.query(Employee).filter(
    or_(Employee.employee_id > 2, Employee.salary > 85000)
).all()

for emp in emp_filter:
    print(emp.first_name,"--->", emp.email,"--->", emp.salary)