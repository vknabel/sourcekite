# sourcekite

pronounced: [source kite] :smile:

[SDE](https://github.com/jinmingjian/sde)'s language server's backend which is written in Swift. You need to build this tool if you want to use [SDE](https://github.com/jinmingjian/sde).

| Swift version | sourcekite version                                                |
| ------------- | ----------------------------------------------------------------- |
| 5             | [0.6.0](https://github.com/vknabel/sourcekite/releases/tag/0.6.0) |
| 4 and 5       | [0.5.0](https://github.com/vknabel/sourcekite/releases/tag/0.5.0) |
| 3.1 and 4     | [0.4.2](https://github.com/vknabel/sourcekite/releases/tag/0.4.2) |

## Build Instructions

```bash
$ git clone https://github.com/vknabel/sourcekite
$ cd sourcekite
```

clone this project, then run build command in that project as follow:

### for Linux

```bash
# Ensure you have libcurl4-openssl-dev installed (not pre-installed)
# $ apt-get update && apt-get install libcurl4-openssl-dev
# Ensure LD_LIBRARY_PATH contains /your/swift/usr/lib
# And have $ sudo ln -s /your/swift/usr/lib/libsourcekitdInProc.so /usr/lib/libsourcekitdInProc.so
# Other PREFIX paths are fine, too
$ make install PREFIX=/usr/local
```

For more information see [jpsim/SourceKitten#how-is-sourcekit-resolved](https://github.com/jpsim/SourceKitten#how-is-sourcekit-resolved).

### for MacOS

```bash
$ make install PREFIX=/usr/local
```

Finally set "swift.path.sourcekite" in vscode to let SDE know the location of this tool. It recommends to add this setting to the gloabl via _"File" -> "Preferences" -> "Settings"_. Like:

```javascript
{
    "swift.path.sourcekite": "/usr/local/bin/sourcekite"
}
```

## Issues

file an issues if you have problem.

## License

Apache License v2.
