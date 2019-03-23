
create-platform:
	ansible-playbook -i inventory/dev.yml playbooks/create-platform.yml

prepare-host:
	ansible-playbook -i inventory/dev.yml playbooks/prepare-host.yml

clean:
	rm playbooks/*.retry
