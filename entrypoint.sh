#!/bin/bash

echo -e "Using voucher: ${HP_VOUCHER}"
echo -e "Connecting to URL: ${HP_SERVER_URL}/api/server.php"
/usr/bin/python /opt/hashtopolis.zip --voucher $HP_VOUCHER --url ${HP_SERVER_URL}"/api/server.php"

