#!/bin/bash

pg_dump -d diauma -h localhost -p 5433 -U  diauma -c -f diauma_dump.sql
psql -U postgres -d diauma < diauma_dump.sql
