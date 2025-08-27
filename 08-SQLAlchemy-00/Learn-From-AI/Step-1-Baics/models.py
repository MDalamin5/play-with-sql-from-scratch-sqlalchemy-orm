from sqlalchemy import Column, Integer, String, Float
from database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    username = Column(String, nullable=False)
    age = Column(Integer)
    balance = Column(Float)

    def __repr__(self):
        return f"<User(username='{self.username}', age={self.age}, balance={self.balance})>"
