#!/bin/bash

echo -e "enter a password"

stty -echo 
read password
stty echo 
echo 
echo password read.password is ${password}
