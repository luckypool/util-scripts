util-scripts
============

## prepareing

```bash
$ carton install
```
- install cpan modules to 'local' directory

## shuffle.pl

*usage*

```bash
$ carton exec -- perl shuffle.pl --data ./data/members.yaml
```
- script do following:
  - load yaml file
  - shuffle member list
  - when 1st member was determined, show order and exit

```yaml
# sample yaml files
members:
  - foo
  - bar
  - baz
first_member: baz
```

