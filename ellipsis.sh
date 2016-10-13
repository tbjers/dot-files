#!/usr/bin/env bash
#
# tbjers/dot-files ellipsis package

pkg.link() {
  fs.link_files common

  case $(os.platform) in
    osx)
      fs.link_files platform/osx
      ;;
    linux)
      fs.link_files platform/linux
      ;;
  esac
}

git-configured() {
  for key in user.name user.email github.user; do
    if [ -z "$(git config --global $key | cat)" ]; then
      return 1
    fi
  done
  return 0
}

pkg.install() {
  git.add_include '~/.gitinclude'
  git.configured || cat <<\EOF
You should set your email, name and github user for git with `git config`:

    git config --global user.name "Torgny Bjers"
    git config --global user.email "hello@tbjers.com"
    git config --global github.user "tbjers"
EOF
}

# The following hooks can be defined to customize behavior of your package:
# pkg.install() {
#     fs.link_files $PKG_PATH
# }

# pkg.push() {
#     git.push
# }

# pkg.pull() {
#     git.pull
# }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
