import os
import time

import psycopg2.extras


# Extract (additional) meta data of scans from database and export to ttl format
# This is work in progress and not for productive use.
#

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


def get_prefix(row):
    identifier = '<https://id.acdh.oeaw.ac.at/diauma/Scans/'
    name = row.file.replace('scan/', '')  # remove prefix
    name = name.replace('Ausserhalb', 'Auerhalb')  # synchronize identifier
    filename, file_extension = os.path.splitext(name)
    name = filename.replace('.', '') + file_extension  # remove dots from file name
    if '_' in name:  # Add sub directory
        identifier += str(name.rsplit('_', 1)[0]) + '/'
    return identifier + name + '> acdh:'


def export_diauma():  # pragma: no cover
    start = time.time()
    cursor = get_cursor()
    science_domains = {
        181: '401',  # Agricultural
        71: '504006',  # Demographic
        63: '504009',  # Ethnologic
        7: '602',  # Linguistic
        42: '509021',  # Military
        38: '506011',  # Political
        192: '105409'  # Topographic
    }
    creators = {6: 'ekranzmayer',
                9: 'fwrede',
                12: 'mwutte',
                14: 'jazimmermann',
                21: 'ahziegfeld',
                22: 'earnberger',
                23: 'hhassinger',
                24: 'frosenkranz',
                25: 'kbrunbauer',
                26: 'hbona',
                27: 'klechner',
                28: 'aklaar',
                29: 'lsrutschka',
                30: 'hfirnberg',
                31: 'fsteinhauser',
                32: 'wkuenelt',
                33: 'hlwerneck',
                34: 'hmitscha-maerheim',
                35: 'htrimmel',
                36: 'eweber',
                37: 'khawranek',
                38: 'kwiche',
                39: 'wwinkler'}
    detail_url = 'https://diauma.acdh.oeaw.ac.at/maps/map/detail/'
    ttl = '@prefix acdh: <https://vocabs.acdh.oeaw.ac.at/schema#>.\n'
    ttl += '@prefix acdhi: <https://id.acdh.oeaw.ac.at/>.\n\n'
    sql = """
        SELECT
            s.id, s.name, s.file, m.id AS map_id,
            m.date_created, m.date_content, m.date_content2
        FROM maps_scan s
        JOIN maps_scan_scan_map ms ON s.id = ms.scan_id
        JOIN maps_map m ON ms.map_id = m.id
        ORDER BY s.id;
    """
    cursor.execute(sql)
    for row in cursor.fetchall():
        prefix = get_prefix(row)
        ttl += prefix + 'hasTitle "' + row.name + '"@de.\n'
        ttl += prefix + 'hasUrl "' + detail_url + str(row.map_id) + '".\n'
        ttl += prefix + 'hasDigitisingAgent acdhi:chackl.\n'
        ttl += prefix + 'hasDigitisingAgent acdhi:jdzimmermann.\n'
        ttl += prefix + 'hasDigitisingAgent acdhi:kwagner.\n'
        if row.date_created:
            ttl += prefix + 'hasCreatedDateOriginal "' + str(row.date_created)[:4] + '".\n'
        if row.date_content:
            ttl += prefix + 'hasCoverageStartDate "' + str(row.date_content) + '".\n'
        if row.date_content2:
            ttl += prefix + 'hasCoverageEndDate "' + str(row.date_content2) + '".\n'
        creator_sql = "SELECT person_id FROM maps_map_map_persons WHERE map_id = %(map_id)s;"
        cursor.execute(creator_sql, {'map_id': row.map_id})
        for row_creator in cursor.fetchall():
            ttl += prefix + 'hasCreator ' + 'acdhi:' + creators[row_creator.person_id] + '.\n'
        science_sql = "SELECT type_id FROM maps_map_map_type WHERE map_id = %(map_id)s;"
        cursor.execute(science_sql, {'map_id': row.map_id})
        for row_type in cursor.fetchall():
            if row_type.type_id not in science_domains:
                continue
            link = 'https://vocabs.acdh.oeaw.ac.at/oefosdisciplines/' + science_domains[row_type.type_id]
            ttl += prefix + 'hasRelatedDiscipline <' + link + '>.\n'
        ttl += '\n'
    with open('diauma_metadata.ttl', 'w') as file:
        # print(ttl)
        file.write(ttl)
    print('Execution time: ' + str(int(time.time() - start)) + ' seconds')


export_diauma()
