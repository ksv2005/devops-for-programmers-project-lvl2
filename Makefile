setup:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault-password

encrypt:
	ansible-vault encrypt --vault-password-file vault-password group_vars/webservers/vault.yml

decrypt:
	ansible-vault decrypt --vault-password-file vault-password group_vars/webservers/vault.yml
