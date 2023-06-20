#!/bin/bash

trigger=$1
updated=$2

echo $trigger $updated

if [[ ((($trigger = 'workflow_dispatch') || \
        ($trigger = 'schedule')) && \
       ($updated = 'true')) || \
      ($trigger == "push") ]]
then
    echo "run"
else
    echo "dont run"
fi
