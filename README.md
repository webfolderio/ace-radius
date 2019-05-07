# ACE RADIUS library

Portable open-source RADIUS stack

## Overview

ACE RADIUS library is open-source implementation of RADIUS protocol as defined in RFC [2865](https://www.ietf.org/rfc/rfc2865.txt) and [2866](https://www.ietf.org/rfc/rfc2866.txt).
The project is mainly targeted for developers and provides a highly portable and very efficient RADIUS stack that may be used in a wide range of products - from RADIUS servers to VoIP phones. [BSD license](https://github.com/webfolderio/ace-radius/blob/master/LICENSE) enables use of the library both in open-source and commercial products.

ACE RADIUS library is implemented in C++ language and uses [CMake](https://cmake.org/) && [vcpkg](https://github.com/Microsoft/vcpkg) toolchain for multi-platform support.
The code uses portable POSIX APIs and is supported on Linux, Solaris and other POSIX-compliant platforms.
Windows platform support is provided as well via the use of Winsock2 library.

## Note
This repor mirror of: [http://ace-radius.sourceforge.net/](http://ace-radius.sourceforge.net)
