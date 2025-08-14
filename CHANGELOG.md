# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Chart: Remove deprecated flag `--enable-keep-alive`.

## [0.14.0] - 2025-08-13

### Changed

- Bump CAPV from `1.10.4` to `1.12.1`.

## [0.13.0] - 2025-03-03

### Changed

- Bump CAPV from `1.9.3` to `1.10.4`.

## [0.12.1] - 2024-06-07

### Changed

- Set `--enable-keep-alive=false` to fix the session expiration issue. See https://github.com/kubernetes-sigs/cluster-api-provider-vsphere/issues/2781

## [0.12.0] - 2024-06-04

### Changed

- Bump CAPV from `1.8.9` to `1.9.3`.
 
## [0.11.0] - 2024-05-22

### Changed

- Pull images from Azure CR.
- Bump CAPV from `1.5.1` to `1.8.9`.

### Added

- Toleration also for old `node-role.kubernetes.io/master` label. Backward compatibility + we hit this.

## [0.10.3] - 2023-10-24

### Changed

- helm chart values `psps.install -> !global.podSecurityStandards.enforced`

## [0.10.2] - 2023-08-29

### Added

- Make PSPs optional since they are deprecated since k8s 1.25 (still enabled by default).
- Add use of runtime/default seccomp profile.
- Fix issues reported by kyverno policies. 

## [0.10.1] - 2023-07-28

### Added

- Add Service monitor cr.

### Fixed

- Fix CiliumNetworkPolicy for webhook ingress.

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

[Unreleased]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.14.0...HEAD
[0.14.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.13.0...v0.14.0
[0.13.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.12.1...v0.13.0
[0.12.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.12.0...v0.12.1
[0.12.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.11.0...v0.12.0
[0.11.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.10.3...v0.11.0
[0.10.3]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.10.2...v0.10.3
[0.10.2]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.10.1...v0.10.2
[0.10.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.10.0...v0.10.1
[0.10.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.4...v0.10.0
[0.9.4]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.3...v0.9.4
[0.9.3]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.2...v0.9.3
[0.9.2]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.1...v0.9.2
[0.9.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.9.0...v0.9.1
[0.9.0]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/compare/v0.8.1...v0.9.0
[0.8.1]: https://github.com/giantswarm/cluster-api-provider-vsphere-app/releases/tag/v0.8.1
