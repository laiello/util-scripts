#!/bin/bash

Dir_to_follow=/var/log
find $Dir_to_follow -name '*.log' -exec sudo le follow '{}' \;
find $Dir_to_follow -name '*_error_log' -exec sudo le follow '{}' \;
find $Dir_to_follow -name '*_access_log' -exec sudo le follow '{}' \;

echo 'Restarting the Agent'
sudo service logentries restart
echo 'Remember to refresh the Logentries page to see your new logs'
