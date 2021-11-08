# swift-extensions

**Extensions** is a package containing extensions to the collection protocols for the Swift programming language.

## Contents

The package currently provides the following extensions:

**BidirectionalCollection**

- `lastIndex`: The position of the last element in this collection.

**CaseIterable**

- `index`: The position of this case in its enumaration.
- `next()`: Returns the bottom adjacent case in its enumeration.
- `previous()`: Returns the top adjacent case in its enumeration.

**Collection**

- `firstIndex`: The position of the first element in this collection.
- `indices(where:)`: Returns an array containing, in order, the elements in this collection that satisfy the given predicate.

**Comparable**

- `isWithin(_:)`: Returns a boolean value indicating whether this value is within a specified closed range.
- `isWithin(_:to:)`: Returns a boolean value indicating whether this value is within two specified values.

**MutableCollection**

- `replace(where:with:)`: Replaces the elements of this collection that satisfies the given predicate.
- `replaceFirst(with:)`: Replaces the first element in this collection with the specified replacement.
- `replaceLast(with:)`: Replaces the last element in this collection with the specified replacement.

**RangeReplaceableCollection**

- `removeFirst(where:)`: Removes and returns the first element in this collection that satisfies the given predicate.
- `removeLast(where:)`: Removes and returns the last element in this collection that satisfies the given predicate.
- `removeRandomElement()`: Removes and returns a random element from this collection.

**Sequence**

- `anySatisfy(where:)`: Returns a boolean value indicating whether any element in this sequence satisfies the given predicate.
- `noneSatisfy(where:)`: Returns a boolean value indicating whether no element in this sequence satisfies the given predicate.
- `contains(contentsOf:)`: Returns a boolean value indicating whether this sequence contains the specified elements.
- `count(where:)`: Returns the total number of times the elements in this sequence satisfies the given predicate.

## Installation

To use this package in a SwiftPM project:

1. Add it to the dependencies in your `Package.swift` file:

```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/alexandrehsaad/swift-extensions.git", branch: "main")
    ],
    ...
)
```

2. Add it as a dependency for your target in your `Package.swift` file:

```swift
let package = Package(
    ...
    targets: [
        .target(name: "MyTarget", dependencies: [
            .product(name: "Extensions", package: "swift-extensions")
        ]),
    ],
    ...
)
```

3. Import the package in your source code.

```swift
import Extensions
```

## Contribution

### Reporting a bug

If you find a bug, please open a bug report.

### Contacting the maintainers

The current code owner of this package is Alexandre H. Saad ([@alexandrehsaad](https://github.com/alexandrehsaad)). You can contact him by writing an email to alexandresaad at icloud dot com.

## Supporting

If you like our work, show your support by staring this repository.

## Feedback

We would love to hear your thoughts or feedback on how we can improve Swift Extensions!
