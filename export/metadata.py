import psycopg2.extras
import time

# Extract meta data of scans from database and export to LIDO format
# This is work in progress
#
# Links:
# http://www.lido-schema.org
# http://www.w3.org/2001/XMLSchema-instance
# http://www.lido-schema.org
# http://www.lido-schema.org http://www.lido-schema.org/schema/v1.0/lido-v1.0.xsd
# https://en.wikipedia.org/wiki/LIDO


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
