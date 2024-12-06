# rules_pkg behavior change

## rules_pkg 0.9.1

```bash
$ bazel build //...
INFO: Analyzed 4 targets (77 packages loaded, 344 targets configured).
INFO: Found 4 targets...
INFO: Elapsed time: 1.053s, Critical Path: 0.18s
INFO: 12 processes: 8 internal, 4 linux-sandbox.
INFO: Build completed successfully, 12 total actions
$ tar -tf bazel-bin/tools/foo.tar.gz 
data/
data/tools/
data/tools/create_file.txt
$ tar -tf bazel-bin/data/foo.tar.gz 
data/
data/data/
data/data/create_file.txt
```

## rules_pkg 1.0.1

```bash
$ bazel build //...
INFO: Analyzed 4 targets (81 packages loaded, 2708 targets configured).
INFO: Found 4 targets...
INFO: Elapsed time: 1.211s, Critical Path: 0.69s
INFO: 11 processes: 7 internal, 4 linux-sandbox.
INFO: Build completed successfully, 11 total actions
$ tar -tf bazel-bin/tools/foo.tar.gz 
data/
data/tools/
data/tools/create_file.txt
$ tar -tf bazel-bin/data/foo.tar.gz 
data/
data/create_file.txt
```
