# sourcekite

pronounced: [source kite] :smile:

[SDE](https://github.com/jinmingjian/sde)'s language server's backend which is written in Swift. You need to build this tool if you want to use [SDE](https://github.com/jinmingjian/sde).

## Build Instructions
clone this project, then run build command in that project as follow:

### for Linux
> sudo ln -s /usr/lib/sourcekitdInProc.framework/sourcekitdInProc /usr/lib/sourcekitdInProc
> make install

change the above linking location/option to your own when necessary)

For more information see [jpsim/SourceKitten#how-is-sourcekit-resolved](https://github.com/jpsim/SourceKitten#how-is-sourcekit-resolved).

### for MacOS
> make install

(NOTE: make sure you have installed the swift toolchain into that location. You can do this via [download from offical site](https://swift.org/download/#snapshots) or [swiftenv](https://swiftenv.fuller.li))

Finally set "swift.path.sourcekite" in vscode to let SDE know the location of this tool. It recommends to add this setting to the gloabl via _"File" -> "Preferences" -> "Settings"_. Like:

```javascript
{
    "swift.path.sourcekite": "/path/to/repo/sourcekite/.build/release/sourcekite"
}
```


## Issues
file an issues if you have problem.

## License
Apache License v2.
