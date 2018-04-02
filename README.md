# Tempry
[![Build Status](https://travis-ci.org/yanamura3/Tempry.svg?branch=master)](https://travis-ci.org/yanamura3/Tempry)

Get a random temporary directory path

## Usage

### create temporary directory and get the path
```swift
do {
  path = try Tempry.directory()
} catch _ {
}
```

### delete temporary directory
```swift
do {
  try Tempry.dispose(path: path)
} catch _ {
}
```


