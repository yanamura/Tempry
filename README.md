# Tempry
[![Build Status](https://travis-ci.org/yanamura/Tempry.svg?branch=master)](https://travis-ci.org/yanamura3/Tempry)

Get a random temporary directory path

## Usage

### create temporary directory and get the path
```swift
path = try Tempry.directory()
```

### delete temporary directory
```swift
try Tempry.dispose(path: path)
```


