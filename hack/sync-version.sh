#!/bin/bash

set -euo pipefail

REPO_NAME="cluster-api-provider-vsphere"

cd "$(dirname "${0}")"
UPSTREAM_ORG="${1}"
TAG="${2:-v1.5.1}"

# create a temporary directory and checkout CAPV there
TMPDIR=$(mktemp -d)
pushd "${TMPDIR}"

git clone --depth=1 --branch "${TAG}" "https://github.com/${UPSTREAM_ORG}/${REPO_NAME}.git"
pushd "${REPO_NAME}"
make release-manifests

# remove cluster-api-provider-vsphere from the stack
popd

# remove $TMPDIR from the stack
popd

# copy upstream generated release-manifests into origin
cp -v "${TMPDIR}/${REPO_NAME}/out/infrastructure-components.yaml" "../config/kustomize/input/"
