#!/bin/bash
mysql --host=$LAB5_DB_HOST --user=$LAB5_USER --password=$LAB5_PASSWORD -e "select * from performers.comedians;"
