# Timestamp Echo

Basic echo functionality but with a timestamp at the beginning of every line.

## Windows Build and Deploy

The following will build and publish the the given version to a chocolatey repository.
You must have the following tools installed and available in the path: `msbuild, choco, dotnet`


```powershell
.\BuildAndPublish.ps1 -version 1.0.0 -deployUrl TODO -apiKey TODO
```

## Linux Build and Deploy - `make`

Prerequisites:

```bash
sudo yum install make gcc-c++ -y
```

* `make` - Build the `techo` application to the `bin` directory.
* `make clean` - Remove the `bin` directory and any intermediate files.
* `make install` - Builds and installs the application to `/usr/local/bin`.
* `make uninstall` - Removes the application from `/usr/local/bin`.

## Linux Build and Deploy - `rpm`

TODO: Figuring rpm build and deploy still.

## Example Usage

```shell
# techo "Foo"
[2018-01-02 15:44:36] Foo
```
