# swiftformat tests

# Getting started 
 
* Open `test.swift` and do something to it that the program `swiftformat` would format for you. One example is to add a few newline characters to the end of the file. 

* Test! `swiftformat` will be executed against `test.swift`. 

# What to test and look for

When you run `swiftformat` script, you want to see output like this:
```
[SWIFT_FORMAT] linting file test/test.swift
Running SwiftFormat...
Reading config file at /Users/levibostian/code/pre-commit-hooks/test/.swiftformat
warning: No Swift version was specified, so some formatting features were disabled. Specify the version of Swift you are using with the --swiftversion command line option, or by adding a .swift-version file to your project.
SwiftFormat completed in 0.03s.
1/1 files formatted.
```

This implies a few things:
1. "Reading config file..." means the `.swiftformat` config file works. 
2. "1/1 files formatted." means that `test.swift` was formatted. 