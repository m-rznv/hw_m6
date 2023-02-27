from psycopg2 import connect, Error
from contextlib import contextmanager

@contextmanager
def connection():
    conn = None
    try:
        conn = connect(
            host='localhost',
            database='postgres',
            user='postgres',
            password='567432'
        )
        yield conn
        conn.commit()

    except Error as err:
        print(err)
        conn.rollback()
         
    finally:
        if conn:
            conn.close()
        