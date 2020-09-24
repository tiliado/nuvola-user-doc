info:
	cat Makefile
serve:
	fxwebgen.py -c config.yaml --serve
generate:
	fxwebgen.py -c config.yaml
publish:
	cd ~/dev/k3s && ansible-playbook -i hosts.txt -vD playbooks/tiliado.eu-nginx.yml -l tiliado4 --tags nuvola-docs
