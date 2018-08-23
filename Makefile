all: generate publish
generate:
	fxwebgen.py -c config.yaml
publish:	
	cd ~/dev/projects/fxdepl && ./fxdepl.py push -s server3.tiliado.eu -p nuvola.tiliado.eu-docs -R
