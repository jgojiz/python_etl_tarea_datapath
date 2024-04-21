from typing import Tuple
from dotenv import load_dotenv
import os

load_dotenv(dotenv_path='credentials.env')

def mysql_params(schema: str) -> Tuple[str, str, str, str, str]:
    
    if schema == 'oltp':
        db = 'OLTP_DATABASE'
    else:
        db = 'OLAP_DATABASE'
    
    HOST = os.getenv('HOST')
    DATABASE = os.getenv(db)
    USER = os.getenv('USER')
    PASSWORD = os.getenv('PASSWORD')
    
    return HOST, DATABASE, USER, PASSWORD
