#!/bin/bash

# Lists all listening ports.

sudo netstat -tulpna | grep LISTEN
