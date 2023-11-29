#!/bin/bash
while true; do
    # Get the current hour and minute
    current_hour=$(date +%H)
    current_minute=$(date +%M)
    # Check the current time and execute the appropriate script
    if [ "$current_hour" == "08" ] && [ "$current_minute" == "01" ]; then
        # Run the 1st script at 8:01 AM
        /root/node1_start.sh
        sleep 60  # Sleep for 1 minute
        /root/script.sh  # Run the additional script
    elif [ "$current_hour" == "15" ] && [ "$current_minute" == "01" ]; then
        # Run the 2nd and 3rd scripts 7 hours after the 1st script (at 3:01 PM)
        /root/node1_stop.sh
        sleep 60  # Sleep for 1 minute
        /root/node2_start.sh
        sleep 60  # Sleep for 1 minute
        /root/script.sh  # Run the additional script
    elif [ "$current_hour" == "21" ] && [ "$current_minute" == "31" ]; then
        # Run the 4th script 6.5 hours after the start of node2_start.sh (at 9:31 PM)
        /root/node2_stop.sh
        sleep 60  # Sleep for 1 minute
        /root/node3_start.sh  # Run the additional script
        sleep 60  # Sleep for 1 minute
        /root/script.sh  # Run the additional script
    elif [ "$current_hour" == "04" ] && [ "$current_minute" == "31" ]; then
        # Run the 5th script 7 hours after the start of node3_start.sh (at 4:31 AM)
        /root/node3_stop.sh
    fi
    # Sleep for 1 minute before checking again
    sleep 60
done
