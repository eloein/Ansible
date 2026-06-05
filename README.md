![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)

# Ansible Automation
Various Ansible playbooks I use for Automation.

## Usage
- Clone the repo:
```sh
git clone https://github.com/eloein/Ansible
```

- Install requirments
```sh
ansible-galaxy collection install -r requirements.yml
```

- Run a playbook in push mode:
```sh
ansible-playbook <PLAYBOOK>.yml
```

- Run a playbook in pull mode:
```sh
ansible-pull -U https://github.com/eloein/Ansible.git -i 127.0.0.1, playbooks/provisionNewServer.yml --ask-become-pass
```

- Run a playbook in pull mode using your own custom variables:
```sh
ansible-pull -U https://github.com/eloein/Ansible.git -i 127.0.0.1, playbooks/provisionNewServer.yml --extra-vars "@path/to/your_vars_file.yml" --ask-become-pass
```

#### Web interface access of services set up by these playbooks can be achieved via SSH tunnels like below
```sh
ssh -L 8443:localhost:8443 -A <USER>@<SERVER_IP> -p <SSH_PORT>
```
###### (Note: -A is here for agent forwarding, useful for SSH)

## Maintainers
[@Tekore](https://github.com/eloein)