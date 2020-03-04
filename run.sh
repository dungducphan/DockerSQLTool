#!/usr/bin/zsh

# Open xhost port
if [[ -z "$IP" ]]; then
    export IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
fi
xhost + $IP

# Copy your own database to this folder.
# In this exampkle I load a test database (remember you need FNAL Kerberos and novagpvm access to do this).
FILE="*.db"
cd ./data
if [[ -f ${FILE} ]]; then
    echo "Database file exists!"
else
    echo "Database file does NOT exist. Download a sample file."
    source download.sh
fi
cd -

# Run
docker run --rm -it -e DISPLAY=$IP:0 --mount type=bind,src=`pwd`/data,dst=/home/user/sql dungphan90/sqlviewer:latest