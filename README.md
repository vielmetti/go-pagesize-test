# go-pagesize-test

Test for golang pagesize bug, and also a test for the downstream impact of
that bug on deeply nested Docker filesystems.

Fix in https://github.com/golang/go/commit/1b9499b06989d2831e5b156161d6c07642926ee1

Fix also in http://launchpadlibrarian.net/343988334/golang-1.6_1.6.2-0ubuntu5~16.04.3_1.6.2-0ubuntu5~16.04.4.diff.gz as repaired by Ubuntu 16.04 LTS; this depends on there being a fixed pagesize on Ubuntu kernels.

Prerequisites: `apt-get install bats` to run tests.
