##@ App

SHELL := /bin/bash

APPLICATION_NAME="cluster-api-provider-vsphere"

UPSTREAM_ORG="kubernetes-sigs"
TAG_TO_SYNC="v1.5.1"

.PHONY: all
all: fetch-upstream-manifest apply-kustomize-patches delete-generated-helm-charts release-manifests ## Builds the manifests to publish with a release (alias to release-manifests)

.PHONY: fetch-upstream-manifest
fetch-upstream-manifest: ## fetch upstream manifest from
	# fetch upstream released manifest yaml
	./hack/sync-version.sh ${UPSTREAM_ORG} ${TAG_TO_SYNC}

.PHONY: apply-kustomize-patches
apply-kustomize-patches: ## apply giantswarm specific patches
	kubectl kustomize config/kustomize -o config/kustomize/tmp

#.PHONY: delete-generated-helm-charts
delete-generated-helm-charts: # clean workspace and delete manifests
	@rm -rvf ./helm/${APPLICATION_NAME}/templates/*.yaml
	@rm -rvf ./helm/${APPLICATION_NAME}/files/*.yaml

.PHONY: release-manifests
release-manifests:
	# move files from workdir over to helm directory structure
	./hack/prepare-helmchart.sh ${APPLICATION_NAME}
