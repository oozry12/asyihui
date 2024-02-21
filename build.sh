#!/bin/sh
shopt -s dotglob
if [ "$NETLIFY" = "true" ]; then
  cd static
  echo 'User-agent: *
Disallow: /' > robots.txt
  cd ..
fi


# Vercel only does a shallow clone, which loses git info
if [ "$VERCEL_ENV" = "production" ]; then
  rm -rf *
  git clone --recursive -b $VERCEL_GIT_COMMIT_REF https://github.com/$VERCEL_GIT_REPO_OWNER/$VERCEL_GIT_REPO_SLUG.git .
  git config advice.detachedHead false
  git checkout 
fi

# Netlify uses $CONTEXT and Vercel uses $VERCEL_ENV
if [ "${VERCEL_ENV:-$CONTEXT}" = "production" ]; then
  hugo -F --enableGitInfo
else
  hugo -F -D -b ${VERCEL_URL:-$DEPLOY_PRIME_URL} --enableGitInfo
fi
