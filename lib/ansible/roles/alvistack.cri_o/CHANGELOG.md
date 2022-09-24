# Ansible Role for CRI-O

## 5.8.0 - TBC

### Major Changes

## 5.7.0 - 2022-04-27

### Major Changes

  - Rename Ansible Role with FQCN
  - Support Ansible community package 5.7.0
  - Support RHEL 9
  - Support CentOS 9 Stream
  - Support openSUSE Leap 15.4

## 5.6.0 - 2022-04-07

### Major Changes

  - Support Ansible community package 5.6.0
  - Support Fedora 36
  - Support Ubuntu 22.04
  - Rename repo for CentOS 8 Stream
  - Support Ansible community package 5.5.0
  - Remove Kubernetes 1.20 suport
  - Support Ansible community package 5.4.0

## 5.5.0 - 2022-02-11

### Major Changes

  - Remove Ubuntu 21.04 support
  - Skip package upgrade before running molecule
  - Support Fedora Rawhide
  - Support Debian Testing

## 5.4.0 - 2021-12-31

### Major Changes

  - Remove openSUSE Leap 15.2 support
  - Upgrade minimal Ansible community package support to 4.10

## 5.3.0 - 2021-10-20

### Major Changes

  - Remove Fedora 33 support
  - Remove Ubuntu 20.10 support
  - Support Fedora 35
  - Support Ubuntu 21.10
  - Upgrade minimal Ansible community package support to 4.7.0

## 5.2.0 - 2021-09-19

### Major Changes

  - Install dependencies with package manager
  - Upgrade minimal Ansible community package support to 4.5.0
  - Rename prefix with `kube_`

## 5.1.0 - 2021-07-18

### Major Changes

  - Support cgroupfs cgroup driver for CentOS/RHEL 7
  - Upgrade minimal Ansible community package support to 4.2.0
  - Support Debian 11
  - Support openSUSE Leap 15.3
  - Improve download archive logic

## 5.0.0 - 2021-06-02

### Major Changes

  - Upgrade minimal Ansible support to 4.0.0
  - Support Fedora 34
  - Support Ubuntu 21.04
  - Simplify download archive logic

## 4.7.0 - 2021-03-13

### Major Changes

  - Bugfix [ansible-lint `namespace`](https://github.com/ansible-community/ansible-lint/pull/1451)
  - Bugfix [ansible-lint `no-handler`](https://github.com/ansible-community/ansible-lint/pull/1402)
  - Bugfix [ansible-lint `unnamed-task`](https://github.com/ansible-community/ansible-lint/pull/1413)
  - Simplify Python dependency with system packages
  - Support RHEL 8 with Molecule
  - Support RHEL 7 with Molecule
  - Remove CentOS 8 support
  - Improve HTTP transparent proxy support
  - Improve download archive logic
  - Support CentOS 8 Stream
  - Support openSUSE Tumbleweed
  - Migrate base Vagrant box from `generic/*` to `alvistack/*`

## 4.6.0 - 2020-12-28

### Major Changes

  - Simplify Molecule scenario for vagrant-libvirt
  - Migrate from Travis CI to GitLab CI
  - Support Fedora 33
  - Remove Fedora 32 support
  - Support Ubuntu 20.10
  - Remove redundant tags from tasks
  - Bugfix graceful shutdown deadlock due to systemd dependencies

## 4.5.0 - 2020-08-26

### Major Changes

  - Upgrade minimal Ansible Lint support to 4.3.2
  - Shutdown CRI-O containers before shutting down the system
  - Upgrade Travis CI test as Ubuntu Focal based
  - Upgrade minimal Ansible support to 2.10.0
  - Support openSUSE Leap 15.2
  - Remove Ubuntu 19.10 support

## 4.4.0 - 2020-06-04

### Major Changes

  - Install bash completion
  - Install with static binary archive
  - Support `crun`
  - Support Fedora 32
  - Support Debian 10
  - `molecule -s default` with delegated to localhost
  - Change default log verbosity to `warn`

## 4.3.0 - 2020-04-22

### Major Changes

  - Template `molecule -s default` with dummy docker driver
  - Support CentOS/RHEL 8
  - Support Ubuntu 20.04
  - Remove Ubuntu 16.04 support
  - Upgrade minimal Molecule support to 3.0.2

## 4.2.0 - 2020-02-23

  - Ininitial release for Ansible 2.9 or higher
  - Support both Ubuntu 18.04/19.10 or RHEL/CentOS 7 or openSUSE Leap 15.1