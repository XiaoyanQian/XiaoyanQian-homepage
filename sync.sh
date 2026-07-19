#!/bin/bash
# sync.sh — one-command update for the homepage.
# Usage:
#   ./sync.sh "what you changed"
#   ./sync.sh                      (uses a timestamp as the message)
#
# It stages all changes, commits, and pushes to GitHub (branch main).
# Your Mac's saved GitHub login is used; no token needs to be typed.

set -e
cd "$(dirname "$0")"

# Build the commit message from all arguments, or fall back to a timestamp.
if [ -z "$1" ]; then
  MSG="Update $(date '+%Y-%m-%d %H:%M')"
else
  MSG="$*"
fi

# Nothing to do if the working tree is clean.
if git diff --quiet && git diff --cached --quiet && [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to sync — no changes since the last push."
  exit 0
fi

git add -A
git commit -m "$MSG"

# Push to origin first (the live site), then any other remotes.
# A failure on one remote does not stop the others.
echo "Pushing to origin ..."
git push origin main || echo "  -> origin FAILED (check access/auth)"

for remote in $(git remote | grep -vx origin); do
  echo "Pushing to $remote ..."
  git push "$remote" main || echo "  -> $remote FAILED (you may not have write access to this repo)"
done

echo ""
echo "Done. Live in ~1-2 min at:"
echo "  https://xiaoyanqian.github.io/XiaoyanQian-homepage/"
