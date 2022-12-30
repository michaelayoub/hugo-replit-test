#!/bin/bash

if [ "$REPL_SLUG" == 'ExtrovertedButteryOpposites' ] # draft space
then
  hugo server --buildDrafts --buildFuture --bind 0.0.0.0 --port 443 --baseURL https://$REPL_SLUG.$REPL_OWNER.repl.co
else # production
  hugo server --bind 0.0.0.0 --port 443 --baseURL https://$REPL_SLUG.$REPL_OWNER.repl.co
fi
