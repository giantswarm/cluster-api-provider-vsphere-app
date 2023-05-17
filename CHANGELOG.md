# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.9.3] - 2023-05-17

### Added

- Add cilium network policies to allow kube-api access.
- Add network policies for egress.
- Add toleration for new control-plane taint.

## [0.9.2] - 2023-03-21

### Added

- Add labels to CRDs for clusterctl move.

## [0.9.1] - 2023-03-20

### Fixed

- Fix app catalog in CI.

## [0.9.0] - 2023-03-14

### Changelog

- Rebase on upstream (`1.5.1`) version (crds & all the manifests).
- Changed hard-coded nodeSelector into configurable tolerations-affinity combo.
- Remove credentials from the helm chart.

## [0.8.1] - 2021-10-25

### Added

- Add initial helm chart

[Unreleased]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.3...HEAD
[0.9.3]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.2...v0.9.3
[0.9.2]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.1...v0.9.2
[0.9.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.0...v0.9.1
[0.9.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.8.1...v0.9.0
[0.8.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/releases/tag/v0.8.1
