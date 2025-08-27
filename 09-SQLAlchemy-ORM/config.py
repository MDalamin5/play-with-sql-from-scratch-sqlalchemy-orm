import os
from dotenv import load_dotenv
from urllib.parse import quote_plus
load_dotenv()

OWN_GPT_DB_PASS = os.getenv("OWN_GPT_DB_PASS")
OWN_GPT_DB_API = os.getenv("OWN_GPT_DB_API")
OWN_GPT_DB_NAME = os.getenv("OWN_GPT_DB_NAME")
encoded_password = quote_plus(OWN_GPT_DB_PASS)

DATABASE_URL = f"postgresql://postgres:{encoded_password}@1{OWN_GPT_DB_API}:5432/{OWN_GPT_DB_NAME}"

print(DATABASE_URL)