all:
	mkdir -p output
	./indexer.py output plugins/*

clean:
	rm -rf output
	rm *~

upload:
	rsync -rv output/ ${SHOWTIMEPLUGINREPO}

updateall:
	for a in plugins/* ; do (cd $$a ; git checkout master && git pull --rebase); done
