# Wand-plus

This is an implementation of the extended wand algorithm for
Hindley-Milner type inference [as described][paper] by [Dr.
Kothari][skothari].

[paper]: https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.143.8499&rep=rep1&type=pdf
[skothari]: https://sites.google.com/site/sunilkotharisite/

## Building

First you need to [install roswell][2].

And then [qlot][3]:
```bash
ros install qlot
```

To build the project:
```bash
# to locally install the dependencies
ros exec qlot install

# to start a swank server with access to the local :wand-plus system
ros exec qlot exec ros -S . -e '(ql:quickload :swank) (swank:create-server)'

# to run <cmd> <args>... with access to the local :wand-plus system
ros exec qlot exec <cmd> <args>...
```

[2]: https://github.com/roswell/roswell/wiki/Installation
[3]: https://github.com/fukamachi/qlot
