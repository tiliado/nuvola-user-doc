info:
	cat Makefile
serve:
	./fxwebgen -c config.yaml --serve
generate:
	./fxwebgen -c config.yaml
publish:
	cd ~/dev/k3s && ansible-playbook -i hosts.txt -vD playbooks/tiliado.eu-nginx.yml -l contabo2 --tags nuvola-docs
