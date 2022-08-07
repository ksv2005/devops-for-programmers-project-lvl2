setup:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file .password
