import time

import psycopg2.extras
from lxml import etree


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
