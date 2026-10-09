#!/usr/bin/env bash
# Fails if personal or confidential strings, or em dashes, appear in the repo.
# Private patterns (your own email, phone, employers) are NOT stored in this repo.
# Put one regex per line in a file outside the repo and point to it:
#   CHECK_CLEAN_PATTERNS=~/private-patterns.txt bash scripts/check-clean.sh
set -u
cd "$(dirname "$0")/.."
fail=0
pf="${CHECK_CLEAN_PATTERNS:-}"
if [ -n "$pf" ] && [ -f "$pf" ]; then
  if grep -RInE -f "$pf" . --exclude-dir=.git --exclude=LICENSE --exclude=check-clean.sh; then fail=1; fi
else
  echo "check-clean: no private pattern file set, skipping personal-data check"
fi
# Employer names are allowed in README only (confirmed meeting-prep facts), not in skills or manifests.
if grep -RInE 'Cisco|3Pillar' skills .claude-plugin 2>/dev/null; then fail=1; fi
# Em dashes banned in all authored copy.
if grep -RIn "$(printf '\xe2\x80\x94')" . --exclude-dir=.git --exclude=check-clean.sh; then fail=1; fi
if [ "$fail" -ne 0 ]; then echo "check-clean: FAILED"; exit 1; fi
echo "check-clean: ok"
