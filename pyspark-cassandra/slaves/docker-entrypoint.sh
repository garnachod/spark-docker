#!/bin/bash
set -e

echo "${SPARKMASTER} spark-master.test.com spark-master" >> /etc/hosts
exec "$@"
