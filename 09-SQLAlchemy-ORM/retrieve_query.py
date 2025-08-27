from utiles import get_session
from models import Employee
from sqlalchemy import select, update

session = get_session()

try:
    stmt = (
        select(Employee.first_name, Employee.salary).where(Employee.employee_id == 1)
    )

    result = session.execute(stmt).scalar()
    print(result)

except Exception as e:
    print(f"Error is {e}")