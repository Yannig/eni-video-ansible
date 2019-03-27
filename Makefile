
create-platform:
	ansible-playbook -i inventory/dev.yml playbooks/create-platform.yml

prepare-host:
	ansible-playbook -i inventory/dev.yml playbooks/prepare-host.yml

install-mariadb:
	ansible-playbook -i inventory/dev.yml playbooks/mariadb.yml

install-php:
	ansible-playbook -i inventory/dev.yml playbooks/php.yml

configure-mariadb:
	ansible-playbook -i inventory/dev.yml playbooks/configure-mariadb.yml

install-wordpress:
	ansible-playbook -i inventory/dev.yml playbooks/install-wordpress.yml

clean:
	rm playbooks/*.retry
