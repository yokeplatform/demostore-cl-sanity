#!/bin/bash
# commercelayer app:add -o demostore_1 -i <client_id> -s <client_secret> -a demostore_1
# commercelayer applications:switch
commercelayer plugins:install cleanups
commercelayer cleanups:create -t skus
