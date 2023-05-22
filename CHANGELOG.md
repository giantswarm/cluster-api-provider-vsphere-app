# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.10.0] - 2023-05-22

**Info on breaking changes:** This release makes incompatible changes to the values schema.

<details>
<summary>How to migrate from 0.9.4</summary>

To migrate from `0.9.4`, the `crds` entry in `values.yaml` has been replaced with `crdInstall`. If these were
overridden when the chart was installed then the values must be updated to reflect the new structure. If these
were left as default then no action is required.
</details>

### Changed

- :boom: **Breaking:** Update `kubectl` image to `1.25.10` and align CRD install values with other providers.

## [0.9.4] - 2023-05-19

### Fixed

- Remove rogue `creationTimestamp: "null"`.

## [0.9.3] - 2023-05-17

:warning: This release is broken. Please use 0.9.4 instead.

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

[Unreleased]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.10.0...HEAD
[0.10.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.4...v0.10.0
[0.9.4]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.3...v0.9.4
[0.9.3]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.2...v0.9.3
[0.9.2]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.1...v0.9.2
[0.9.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.0...v0.9.1
[0.9.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.8.1...v0.9.0
[0.8.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/releases/tag/v0.8.1
