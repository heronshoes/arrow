#!/usr/bin/env sh
set -eux

# Install requirements for Apache Arrow

sudo apt-get update
sudo apt-get install -y \
     build-essential \
     cmake \
     gobject-introspection \
     gtk-doc-tools \
     meson \
     ninja-build
