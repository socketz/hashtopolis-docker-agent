#!/bin/bash
docker build --rm -t hpagent --build-arg HP_SERVER_URL=http://127.0.0.1:8000/ --build-arg HP_VOUCHER=your_voucher .
