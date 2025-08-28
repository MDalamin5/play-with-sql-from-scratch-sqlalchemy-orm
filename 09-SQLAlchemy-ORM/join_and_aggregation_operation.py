from utiles import get_session
from models import Employee, QuestionsAnswers
from sqlalchemy import select

session = get_session()

stmt = select(Employee, QuestionsAnswers).join(
    QuestionsAnswers, Employee.employee_id == QuestionsAnswers.id
)

data = session.execute(stmt)

for emp, qa in data:
    print(emp.first_name,"--->", qa.question)
