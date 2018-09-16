Name:    techo
Version: 1.0.0
Release: 1
Summary: Timestamp echo.
License: GPLv3
URL:     https://github.com/jmfb/techo

BuildRequires: make,gcc-c++

%description
Timestamp echo.

%install
make install

%files
/usr/local/bin/techo

%changelog
#TODO
