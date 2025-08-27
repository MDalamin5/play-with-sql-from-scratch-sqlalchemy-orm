from database import engine, SessionLocal
from models import User, Base

# Create tables in the database
Base.metadata.create_all(bind=engine)

# Open a session
db = SessionLocal()

# Create a new user
new_user = User(username="Niloy khan", age=45, balance=99.99)

# Add the user to session and commit (save to DB)
db.add(new_user)
db.commit()

# Optional: see what we added
print("User inserted:", new_user)

# Always close the session
db.close()
