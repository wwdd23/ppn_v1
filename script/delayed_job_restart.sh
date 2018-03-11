#/bin/bash

rails r bin/delayed_job stop
rails r bin/delayed_job start
