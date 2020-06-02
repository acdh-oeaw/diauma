import psycopg2.extras
import time

#  Extract meta data for scans from database and export to Lido format
#  This is work in progress


def connect():
    try:
        connection_ = psycopg2.connect(database='diauma', user='diauma', password='diauma')
        connection_.autocommit = True
        return connection_
    except Exception as e:  # pragma: no cover
        print("Database connection error.")
        raise Exception(e)


connection = connect()


def get_cursor():
    return connection.cursor(cursor_factory=psycopg2.extras.NamedTupleCursor)


def export_diauma():  # pragma: no cover
    start = time.time()
    cursor = get_cursor()
    output = ''
    sql = """
        SELECT name FROM maps_scan;
    """
    cursor.execute(sql)
    for row in cursor.fetchall():
        output += row.name + '\n'
    print(output)
    print('Execution time: ' + str(int(time.time() - start)) + ' seconds')


export_diauma()
