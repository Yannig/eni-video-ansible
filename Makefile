
create-platform:
	ansible-playbook -i inventory/dev.yml playbooks/create-platform.yml

prepare-host:
	ansible-playbook -i inventory/dev.yml playbooks/prepare-host.yml

install-mariadb:
	ansible-playbook -i inventory/dev.yml playbooks/mariadb.yml

clean:
	rm playbooks/*.retry
