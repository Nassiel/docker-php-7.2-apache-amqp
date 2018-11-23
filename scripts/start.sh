#!/bin/bash
export USE_ZEND_ALLOC=0

# Create a log pipe so non root can write to stdout
#mkfifo -m 600 /tmp/logpipe
cat <> /tmp/logpipe 1>&2 &
chown -R www-data:www-data /tmp/logpipe

apache2-foreground