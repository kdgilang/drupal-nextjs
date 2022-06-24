#!/bin/bash

# while test $# -gt 0; do
#     case "$1" in
#       -type)
#         shift
#           type=$1
#         shift
#       ;;
#       *)
#         echo "$1 is not a recognized flag!"
#         return 1;
#         ;;
#   esac
# done

if [ "$1" == "install" ]; then cd cms && lando start && lando composer install && lando db-import db.sql.gz && lando drush cim && cd ../webapp && lando start
elif [ "$1" == "start" ]; then cd cms && lando start && cd ../webapp && lando start
fi
