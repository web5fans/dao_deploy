#!/bin/bash

export PGPASSWORD='postgres' && psql -U postgres -h 127.0.0.1 -p $DAO_DB_NODE_PORT -d dao -f dao/admin.sql
