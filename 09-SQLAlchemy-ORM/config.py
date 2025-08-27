import os
from dotenv import load_dotenv
from urllib.parse import quote_plus
load_dotenv()

OWN_GPT_DB_PASS = os.getenv("OWN_GPT_DB_PASS")
OWN_GPT_DB_API = os.getenv("OWN_GPT_DB_API")
OWN_GPT_DB_NAME = os.getenv("OWN_GPT_DB_NAME")
# encoded_password = quote_plus(OWN_GPT_DB_PASS)
encoded_password = quote_plus("password")

# DATABASE_URL = f"postgresql://postgres:{encoded_password}@{OWN_GPT_DB_API}:5432/{OWN_GPT_DB_NAME}"
DATABASE_URL = f"mysql+pymysql://example_user:{encoded_password}@localhost/own_gpt"

print(DATABASE_URL)