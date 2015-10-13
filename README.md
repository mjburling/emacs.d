### my emacs config

this emacs settings is fully compatible with Linux and Mac Os. It provides support for both platforms linux and Mac os.

### install latest emacs from source

```
$ pacman -Sy base-devel
$ wget https://ftp.gnu.org/pub/gnu/emacs/emacs-24.5.tar.xz
$ tar -xf emacs-24.5.tar.* && cd emacs-24.5
$ ./configure
$ make
$ make install
```

with debian pakages you have to install:
```
$ sudo apt-get install build-dep emacs24
```

### check your emacs version

`M-x emacs-version`

### install packages

`cask install`

if you have problem to install pallet

`Dependency pallet failed to install: Package `package-build-0.1' is unavailable`

you have to remove (source melpa-sable) by (source melpa)

### clojure development with cider

its better to install cider from `melpa-stable`.

`cask install cider`



