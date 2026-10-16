#!/usr/bin/env bash
set -euo pipefail
echo '[smoke] hygiene'
test -f README.md
test -f docs/architecture.md
test -f docs/cost-estimate.md
echo '[smoke] OK (lab)'
