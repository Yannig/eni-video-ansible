ENV       ?= dev
INVENTORY ?= inventory/$(ENV).yml

create-platform:
	ansible-playbook -i $(INVENTORY) playbooks/create-platform.yml

destroy-platform:
	ansible-playbook -i $(INVENTORY) playbooks/destroy-platform.yml

prepare-host:
	ansible-playbook -i $(INVENTORY) playbooks/prepare-host.yml

install-mariadb:
	ansible-playbook -i $(INVENTORY) playbooks/mariadb.yml

install-php:
	ansible-playbook -i $(INVENTORY) playbooks/php.yml

install-haproxy:
	ansible-playbook -i $(INVENTORY) playbooks/haproxy.yml

configure-mariadb:
	ansible-playbook -i $(INVENTORY) playbooks/configure-mariadb.yml

install-wordpress:
	ansible-playbook -i $(INVENTORY) playbooks/install-wordpress.yml

prepare-wordpress:
	ansible-playbook -i $(INVENTORY) playbooks/prepare-wordpress.yml

clean:
	rm playbooks/*.retry

all: create-platform prepare-host install-mariadb install-php install-haproxy configure-mariadb install-wordpress
