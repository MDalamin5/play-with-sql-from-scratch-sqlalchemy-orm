from utiles import get_session
from models import Employee
from sqlalchemy import select, func

## ---Sub Query ---
session = get_session()

high_salary = session.query(func.max(Employee.salary)).scalar()

highest_earner = session.query(Employee).filter(Employee.salary == high_salary).first()

print(highest_earner.first_name, highest_earner.salary)