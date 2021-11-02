# Vault Vagrant project to initialize integrated storage

This initial repo uses shamir key shards as unseal type.

## Instructions
1. Download repo
1. Make sure the vagrant private network does not clash with any you have running
1. Run `download-vault.sh` to download [vault binary](https://releases.hashicorp.com/vault/) and place it in the root of the repo with the fie name `vault`
1. For vault enterprise, get a trial license and place the license file in the root of the repo with the file name `vault.hclic`
1. Run vagrant up
1. vagrant ssh vault-server-1
1. cd /vagrant; sudo ./vault-init-leader.sh
1. exit
1. vagrant ssh vault-server-2
1. cd /vagrant; sudo ./vault-init-follower.sh
1. exit
1. vagrant ssh vault-server-3
1. cd /vagrant; sudo ./vault-init-follower.sh
1. exit

Should be able to log into Vault on http://127.0.0.1:8200
