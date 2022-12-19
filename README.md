
# nspire-merge

This Python script merges multiple Lua source files and images into one Lua file for
TI-Nspire projects.

This project is inspired by [DaveDuck321](https://github.com/DaveDuck321)'s
[TI-Resource-Merge](https://github.com/DaveDuck321/TI-Resource-Merge) (MIT license)
and uses its image conversion mechanism, however the rest was re-written from
scratch to provide a more stable CLI interface and more options.

The generated file can be either pasted into TI Student Software or be compiled
using [Luna](https://github.com/ndless-nspire/Luna).

## Usage

```text
usage: nspire-merge [-h] [--resources RESOURCES] [--out OUT] [--strip] [--api-version API_VERSION] input_files [input_files ...]

positional arguments:
  input_files           specify input files

options:
  -h, --help            show this help message and exit
  --resources RESOURCES
                        load images from folder (default 'res/')
  --out OUT             write output to file (default 'out.lua')
  --strip               strip out blank lines and comments
  --api-version API_VERSION
                        specify api version (default '2.2')
```

**Note:** api version `2.2` is the last version that supports inline-images. For
newer versions, you would need to paste the code into the TI Student Software
and import images manually.

## Installation

### Requirements

 - `PIL` / `Pillow`

Can be installed using `make deps`.

### Installing through the AUR on Arch Linux

This project is available on the AUR as [`nspire-merge`](https://aur.archlinux.org/packages/nspire-merge).
Either install it manually or use an AUR helper of your choice.

### Install using `make`

Install the script to `/usr/local/bin`:

> `sudo make install`

### Uninstalling

`sudo make uninstall` or `sudo rm -vi /usr/local/bin/nspire-merge /usr/local/share/man/man1/nspire-merge`.
