# rules_pkg behavior change

## rules_pkg 0.9.1

```bash
$ bazel build //...
INFO: Analyzed 2 targets (77 packages loaded, 344 targets configured).
INFO: Found 2 targets...
INFO: Elapsed time: 0.915s, Critical Path: 0.16s
INFO: 10 processes: 8 internal, 2 linux-sandbox.
INFO: Build completed successfully, 10 total actions
$ tar -tf bazel-bin/data/foo.tar.gz 
data/
data/data/
data/data/foo.txt
$ tar -tf bazel-bin/tools/foo.tar.gz 
data/
data/tools/
data/tools/foo.txt
```

## rules_pkg 1.0.1

```bash
$ bazel build //...
INFO: Analyzed 2 targets (81 packages loaded, 2708 targets configured).
INFO: Found 2 targets...
INFO: Elapsed time: 1.119s, Critical Path: 0.62s
INFO: 9 processes: 7 internal, 2 linux-sandbox.
INFO: Build completed successfully, 9 total actions
$ tar -tf bazel-bin/data/foo.tar.gz 
data/
data/foo.txt
$ tar -tf bazel-bin/tools/foo.tar.gz 
data/
data/tools/
data/tools/foo.txt
```
