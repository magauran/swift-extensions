// Sorted.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// A property wrapper that keeps an array sorted to a specified predicate.
///
/// ```swift
/// @Sorted(by: <) var values: [Int] = [1, 3, 2]
/// print(values)
/// // Returns "[1, 2, 3]"
/// ```
@propertyWrapper
public struct Sorted<Element>
where Element: Comparable {
	/// The values sorted by the predicate.
	public var values: [Element]
	
	/// The predicate.
	private let predicate: (Element, Element) -> Bool
	
	/// Creates a new instance from the given values and specified predicate.
	///
	/// - Parameter value: The value to clamp.
	public init(wrappedValue values: [Element], by predicate: @escaping (Element, Element) -> Bool) {
		self.values = values
		self.predicate = predicate
		self.wrappedValue = values
	}

	/// The wrapped value of this property wrapper.
	public var wrappedValue: [Element] {
		get {
			return self.values
		} set (newValue) {
			self.values = newValue
			self.values.sort { (lhs, rhs) in
				self.predicate(lhs, rhs)
			}
		}
	}
}
