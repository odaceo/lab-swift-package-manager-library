# Lab :: Swift Package Manager :: Library

[![License](https://img.shields.io/github/license/odaceo/lab-swift-package-manager-library.svg)](LICENSE)
[![Build Status](https://travis-ci.org/odaceo/lab-swift-package-manager-library.svg)](https://travis-ci.org/odaceo/lab-swift-package-manager-library)

## Description

A Swift Library using a Swift System Module.

## Prerequisites

[Vagrant](https://www.vagrantup.com/downloads.html) must be installed on your 
computer to mount the workbench for this project.

Open a Terminal and run the following commands:

```shell
vagrant up
vagrant ssh
cd /vagrant
```

## Creating an empty library

To create an empty library use the following command:

``` shell
swift package init --type library
```

## Building the library

The build command produces the binary file:

``` shell
swift build --configuration release
```

## Testing the library

To launch the test use the following command:

``` shell
swift test
```

## Reporting Issues

Issues can be reported at [https://github.com/odaceo/lab-swift-package-manager-library/issues](https://github.com/odaceo/lab-swift-package-manager-library/issues)

## Source code

The source code is available at [https://github.com/odaceo/lab-swift-package-manager-library](https://github.com/odaceo/lab-swift-package-manager-library)

## License

All the source code is distributed under [ASL 2.0](LICENSE).

## Copyright

© 2017 [Odaceo](http://odaceo.ch). All rights reserved.
