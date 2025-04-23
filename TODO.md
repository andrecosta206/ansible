## Instalations

fzf-tab
fd-find
lazygit
aws, docker, kubenetes, openlens
cant access repo ( check the issue)
  ansible.builtin.git:
    repo: 'git@github.com:andrcosta44/.dotfiles.git'
    dest: "{{ lookup('env', 'HOME') }}/.dotfiles"
    recursive: yes
    update: yes
    accept_hostkey: yes
    version: master

#Stow

change/create script for running stow

#ssh

explore how to save ssh.private key in the new machine or if it works inside the vault

### Ansible vault

how does it work, rly important


