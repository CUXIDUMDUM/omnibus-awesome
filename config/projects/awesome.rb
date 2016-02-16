#
# Copyright 2016 YOUR NAME
#
# All Rights Reserved.
#

name "awesome"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/awesome on Windows
# and /opt/awesome on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# awesome dependencies/components
# dependency "somedep"

dependency "cacerts"
dependency "redis"
dependency "bash"
dependency "autoconf"
dependency "libyaml"
dependency "zlib"
dependency "ncurses"
dependency "openssl"
#dependency "perl"
dependency "bzip2"
dependency "gdbm"
dependency "python"
dependency "sqlite"
dependency "python"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
