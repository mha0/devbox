#!/bin/sh
echo $(( `docker ps | wc -l` - 1 ))/$(( `docker ps -a | wc -l` - 1 ))
