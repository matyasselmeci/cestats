.PHONY: all dbs
all: stats
dbs: resources.sqlite gfactory.sqlite ces.sqlite

stats: ces.sqlite cestats
	./cestats $< $@

resources.sqlite: resources-to-db
	./resources-to-db $@

gfactory.sqlite: gfactory-xml-to-db
	tmpdir=`mktemp -d` && \
	 trap "rm -rf $$tmpdir" EXIT && \
	 git clone -q --depth 1 https://github.com/opensciencegrid/osg-gfactory $$tmpdir/gfactory && \
	 ./gfactory-xml-to-db $$tmpdir/gfactory $@

ces.sqlite: resources.sqlite gfactory.sqlite make-ces-sqlite
	./make-ces-sqlite $@
