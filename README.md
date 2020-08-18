# Hashcomp


Hashcomp is a simple bash script i created that makes it easy to compare a file's hash against a hash you already have.

## Basic usage

Basic usage is simple:

```
~# hashcomp myfile 672cdc5386b5b07d69c5c11ec17c2fecbf326e75
```

By default Hashcomp generates sha1 hashes for files via the sha256sum program.
Hashcomp allows you to specify which program should generate the hash of the file via the `-p` command line option.

```
~# hashcomp -p md5sum myfile 5437270faf13780817d45a1a8b326993
```

Users should note that the output of the command provided by the `-p` switch will be cut at the first space and only data before the first space will be used.

The script returns 0 if the hashes match, otherwise it prints a diff of the hashes and returns 1. It will return nonzero on error.

Hashcomp depends on the following utilities by default:

1. GNU sha256sum
2. GNU cut
3. GNU diff

## LICENSE
Hashcomp is licensed under the BSD 3-clause license. Check the LICENSE file for details.
