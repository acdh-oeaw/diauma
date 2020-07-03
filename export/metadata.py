import time

import psycopg2.extras
from lxml import etree


# Extract meta data of scans from database and export to LIDO format
# This is work in progress
#
# Running script:
# python3 export.py
#
# Testing schema (libxml2-utils package required):
# xmllint --schema http://www.lido-schema.org/schema/v1.0/lido-v1.0.xsd export.xml
#
# Links:
# http://www.lido-schema.org
# http://www.w3.org/2001/XMLSchema-instance
# http://www.lido-schema.org/schema/v1.0/lido-v1.0.xsd
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
    sql = """
        SELECT name FROM maps_scan;
    """
    cursor.execute(sql)
    for row in cursor.fetchall():
        root = etree.Element('lidoWrap',
                             xmlns='http://www.lido-schema.org',
                             nsmap={'xsi': 'http://www.w3.org/2001/XMLSchema-instance',
                                    'ww': 'http://www.lido-schema.org'})
        # xsi:schemaLocation: 'http://www.lido-schema.org http://www.lido-schema.org/schema/v1.0/lido-v1.0.xsd'
        lido = etree.SubElement(root, 'lido')
        rec_id = etree.SubElement(lido, 'lidoRecID', ww='', nsmap={'type': 'PID'})
        '<lidoRecID ww:type="PID">https://diauma.acdh.oeaw.ac.at/maps/reference/detail/25/</lidoRecID>'
        category = etree.SubElement(lido, 'category')
        metadata = etree.SubElement(lido, 'descriptiveMetadata')
        object_id_wrap = etree.SubElement(metadata, 'objectIdentificationWrap')
        title_wrap = etree.SubElement(object_id_wrap, 'titleWrap')
        title_set = etree.SubElement(title_wrap, 'titleSet')
        appellation_value = etree.SubElement(title_set, 'appellationValue')
        appellation_value.text = row.name
        source_appellation = etree.SubElement(title_set, 'sourceAppellation')
        source_appellation.text = 'Appellation according source'
        break
    xml = etree.tostring(root,
                         encoding='UTF-8',
                         xml_declaration=True,
                         pretty_print=True,
                         method='xml').decode('UTF-8')
    print(xml)
    with open('export.xml', 'w') as file:
        file.write(xml)
    print('Execution time: ' + str(int(time.time() - start)) + ' seconds')


export_diauma()

# First try with ElementMaker

# e = builder.ElementMaker(namespace="http://www.lido-schema.org",
#                          nsmap={'lidoWrap': "http://www.lido-schema.org"})
# root = e.root
# doc = e.doc
# field1 = e.appellationValue
# field2 = e.field2
# the_doc = root(doc(field1(row.name),))#
# with open("output.txt", "w") as file_:
#     print(etree.tostring(the_doc,
#                               encoding="UTF-8",
#                               xml_declaration=True,
#                               pretty_print=True,
#                               method='xml').decode('UTF-8'),
#           file=file_)
