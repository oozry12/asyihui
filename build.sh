#!/bin/sh
shopt -s dotglob



# Vercel only does a shallow clone, which loses git info
if [ "$VERCEL_ENV" = "production" ]; then
  rm -rf *
  git clone  git@github.com:oozry12/asyihui.git .
  git config advice.detachedHead false
  git checkout 
fi

# Netlify uses $CONTEXT and Vercel uses $VERCEL_ENV
if [ "${VERCEL_ENV:-$CONTEXT}" = "production" ]; then
  hugo -F --enableGitInfo
else
  hugo -F -D -b ${VERCEL_URL:-$DEPLOY_PRIME_URL} --enableGitInfo
fi
