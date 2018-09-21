# Timestamp Echo

Basic echo functionality but with a timestamp at the beginning of every line.

## Windows Build and Deploy

The following will build and publish the the given version to a chocolatey repository.
You must have the following tools installed and available in the path: `msbuild, choco, dotnet`

```powershell
.\BuildAndPublish.ps1 -version 1.0.0 -deployUrl TODO -apiKey TODO
```

## Linux Build and Deploy - `make`

CentOS Prerequisites:

```bash
sudo yum install make gcc-c++ -y
```

Ubuntu Prerequisites:

```bash
sudo apt-get install make g++ dpkg -y
```

* `make` or `make build` - Build the `techo` application to the `bin` directory.
* `make clean` - Remove the `bin` directory and any intermediate files.
* `sudo make install` - Installs the application to `/usr/local/bin`.  Need to build first.
* `sudo make uninstall` - Removes the application from `/usr/local/bin`.

## CentOS Build and Deploy - `rpm`

TODO: Figuring rpm build and deploy still.

## Ubuntu Build and Deploy - `deb`

* `make package-deb` - Build the `techo_${version}_amd64.deb` package to the `bin` directory.
* `make clean-deb` - Removes the `deb` specific artifacts from the `bin` directory.
* `sudo make install-deb` - Installs the `deb` package.  Need to package first.
* `sudo make uninstall-deb` - Uninstalls the `deb` package.

TODO: Update `package-deb` to replace a version string in `control` file.
TODO: Figure out a good way to publish and pull from a remote location.

## Example Usage

```shell
# techo "Foo"
[2018-01-02 15:44:36] Foo
```
