#!/bin/sh
ifconfig $(route get google.com | awk '/interface/ {print $2}') | awk '/inet / {print $2}'