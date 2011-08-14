all:
	mkdir -p output
	./indexer.py output plugins/*

clean:
	rm -rf output
	rm *~

upload:
	rsync -rv output/ ${SHOWTIMEPLUGINREPO}
