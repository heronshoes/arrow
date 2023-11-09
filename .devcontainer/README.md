<!---
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
-->

# Apache Arrow Development Container

Apache Arrow Development Container (Dev Container in short) allows you to prepare a container encapsulated full-featured development enviroment.

## Source build

This is procedures to build from source to develop red-arrow.

### Source build of C++

Cd to home of C++.
```shell
$ cd /workspace/arrow/cpp
```

List presets of cmake.

```shell
$ cmake --list-presets
```

Confirm details in a preset.

```shell
$ cmake --preset -N ninja-release
```

Out-source build in sub directory.

```shell
$ mkdir build
$ cd $_
$ cmake .. --preset ninja-release
```

Make.

```shell
$ cmake --build .
```

Install.

```shell
$ sudo cmake --install .
```

### Source build of C_GLib

Cd to root of arrow.

```shell
$ cd /workspace/arrow
```

Setup meson.

```shell
$ meson setup c_glib.build c_glib --buildtype=release
```

Comple.

```shell
$ meson compile -C c_glib.build
```

Install.

```shell
$ sudo meson install -C c_glib.build
```

### Development of Red Arrow

You need to install Apache Arrow C++/GLib at master before preparing Red Arrow. 

```shell
$ cd /workspaces/arrow/ruby/red-arrow
$ bundle install
$ bundle exec rake test
```

