import psycopg2.extras
import time
import lxml.etree
import lxml.builder

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
    sql = """
        SELECT name FROM maps_scan;
    """
    cursor.execute(sql)
    for row in cursor.fetchall():
        e = lxml.builder.ElementMaker()
        root = e.root
        doc = e.doc
        field1 = e.appellationValue
        field2 = e.field2
        the_doc = root(
            doc(
                field1(row.name),
                field2('some test value', name='this is a test name'),
            )
        )
        # the_doc.append(FIELD2('another value again', name='hithere'))

        with open("output.txt", "w") as file_:
            print(lxml.etree.tostring(the_doc,
                                      encoding="UTF-8",
                                      xml_declaration=True,
                                      pretty_print=True,
                                      method='xml').decode('UTF-8'),
                  file=file_)

        break
    print('Execution time: ' + str(int(time.time() - start)) + ' seconds')


export_diauma()
