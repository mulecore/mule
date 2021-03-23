 #!/usr/bin/env bash

 # Execute this file to install the mule cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%Mule-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/Mule-Qt.app/Contents/MacOS/muled /usr/local/bin/muled
 sudo ln -s ${LOCATION}/Mule-Qt.app/Contents/MacOS/mule-cli /usr/local/bin/mule-cli
