# cestats
Tool for generating stats on the number of CEs

## Requirements
- Python 3


## Usage
Run `cestats`.
Output will be given as .tab (tab-separated value) files in a `stats/` subdirectory.
`stats/joined.tab` is a full join of the factory and topology information and can be imported as a spreadsheet;
the other files are just lists of FQDNs.

cestats caches fetched data in .sqlite files;
run `updatedbs` to refresh the data (or just delete the files).

