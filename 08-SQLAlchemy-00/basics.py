from sqlalchemy import create_engine, text

engine = create_engine("sqlite:///mydatabase.db", echo=True)

conn = engine.connect()

# conn.execute(
#     text("create table if not exists people (id int primary key, name str, age int)")
# )

conn.execute(
    text("insert into people (id, name, age) values (:id, :name, :age)"),
    
    {"id": 2, "name": "John Doe", "age": 30}
)

conn.commit()