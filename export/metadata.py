import time

import psycopg2.extras


# Extract (additional) meta data of scans from database and export to ttl format
# This is work in progress and not for productive use.
#
# To do: sync ß in filenames with Seta

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


def get_identifier(name):
    identifier = 'https://id.acdh.oeaw.ac.at/diauma/Scans/'
    name = name.replace('scan/', '')  # remove prefix
    if '_' in name:  # Add sub directory
        identifier += name.split('_', 1)[0] + '/'
    return identifier + name


def export_diauma():  # pragma: no cover
    start = time.time()
    cursor = get_cursor()
    agents = {18: 'acdhi:chackl', 19: 'acdhi:jdzimmermann'}
    ttl = '@prefix acdh: <https://vocabs.acdh.oeaw.ac.at/schema#>.\n'
    ttl += '@prefix acdhi: <https://id.acdh.oeaw.ac.at/>.\n\n'
    sql = """
        SELECT s.name, s.file, p.person_id FROM maps_scan s
        LEFT JOIN maps_scan_scan_person p ON s.id = p.scan_id;
    """
    cursor.execute(sql)
    for row in cursor.fetchall():
        identifier = get_identifier(row.file)
        ttl += identifier + ' acdh:hasTitle ' + '"' + row.name + '"@de.\n'
        if row.person_id:
            ttl += identifier + ' acdh:hasDigitisingAgent ' + agents[row.person_id] + '.\n'
            break
        ttl += '\n'
    with open('diauma_metadata.ttl', 'w') as file:
        print(ttl)
        # file.write(ttl)
    print('Execution time: ' + str(int(time.time() - start)) + ' seconds')


export_diauma()
