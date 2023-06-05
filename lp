#!/bin/bash

# Lists all listening ports.

sudo netstat -tulpn | grep LISTEN
