# cestats
Tool for generating stats on the number of CEs;
can also generate stats on the number of GridFTP servers.

## Requirements
- Python 3


## Usage
Run `make all` to create all the stats.

CE stats output will be given as .tab (tab-separated value) files in a `cestats/` subdirectory.
`cestats/joined.tab` is a full join of the factory and topology information and can be imported as a spreadsheet;
the other files are just lists of FQDNs.

GridFTP stats output will be given as .tab (tab-separated value) files in a `gridftpstats/` subdirectory.

cestats caches fetched data in .sqlite files;
run `make -B all` to refresh the data (or just delete the files).
