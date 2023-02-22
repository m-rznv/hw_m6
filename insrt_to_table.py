from psycopg2 import Error

from db_connection import connection

create_table_users = """

"""


if __name__ == "__main__":
    with connection() as conn:
        c = conn.cursor()
        c.execute(create_table_users)
        c.close()
