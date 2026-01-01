#!/usr/bin/env bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
readonly SCRIPT_DIR
# shellcheck source=_common.sh
. "$SCRIPT_DIR/_common.sh"

#
# Unique part
#

GH_ORG="terraform-docs"
REDACTED="https://.+?v${VERSION}-${TARGETOS}-${TARGETARCH}.tar.gz"
GH_RELEASE_REGEX_LATEST="https://.+?-${TARGETOS}-${TARGETARCH}.tar.gz"
DISTRIBUTED_AS="tar.gz"

common::install_from_gh_release "$GH_ORG" "$DISTRIBUTED_AS" \
  "$GH_RELEASE_REGEX_LATEST" "$REDACTED"
