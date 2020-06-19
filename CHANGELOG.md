## Changelog

# (Unreleased) v1.0.0
##### Added:
- Vault as daemon
##### Fixed:
- Startup of services are delayed and controlled by ansible playbook `
/etc/ansible/startup.yml` packaged with the box.
##### Breaking changes:
- Users of this box must include a startup section in the Vagrant file for
hashistack to startup. See [Vagrantfile](Vagrantfile) for example.

# v0.0.5
##### Added:
- Automated tests and release process through github actions
##### Updated:
- consul 1.8.0-rc1
- packer 1.6.0

# v0.0.4
##### Added:
- Tests now started using a combination of terraform and ansible
##### Fixed:
- Changes to systemd. Ensure startup of network before consul/nomad

# v0.0.2 - nomad 0.11.3
##### Updated:
- Update to Nomad 0.11.3
# v0.0.1 - First changelog
##### Added:
- Include changelog
##### Fixed:
- Add vagrant in docker group #2
