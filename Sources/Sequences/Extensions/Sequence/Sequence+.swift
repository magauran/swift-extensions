// Sequence+.swift
// Sequences
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension Sequence {
	/// Returns a boolean value indicating whether any element in this sequence satisfies the given predicate.
	///
	/// ```swift
	/// let sequence: [UInt] = [10, 20, 30, 40, 50]
	/// print(sequence.anySatisfy(where: { $0 == 10 }))
	/// // Prints "true"
	/// ```
	///
	/// - Parameter predicate: A closure that takes an element of the sequence as its argument and returns a boolean value that indicates whether the passed element satisfies a predicate.
	/// - Throws: Rethrows a thrown error.
	/// - Returns: `true` if the sequence contains any element that satisfy the given predicate; otherwise, `false`.
	public func anySatisfy(where predicate: (Element) throws -> Bool)
	rethrows -> Bool {
		return try self.contains(where: { (element) in
			try predicate(element)
		}) == true
	}
	
	/// Returns a boolean value indicating whether no element in this sequence satisfies the given predicate.
	///
	/// ```swift
	/// let sequence: [UInt] = [10, 20, 30, 40, 50]
	/// print(sequence.noneSatisfy(where: { $0 == 0 }))
	/// // Prints "true"
	/// ```
	///
	/// - Parameter predicate: A closure that takes an element of the sequence as its argument and returns a boolean value that indicates whether the passed element satisfies a predicate.
	/// - Throws: Rethrows a thrown error.
	/// - Returns: `true` if the sequence contains no element that satisfy the given predicate; otherwise, `false`.
	public func noneSatisfy(where predicate: (Element) throws -> Bool)
	rethrows -> Bool {
		return try self.contains(where: { (element) in
			try predicate(element)
		}) == false
	}
}

extension Sequence {
	/// Returns a boolean value indicating whether this sequence contains the specified elements.
	///
	/// ```swift
	/// let sequence: [UInt] = [10, 20, 30, 40 , 50]
	/// print(sequence.contains(contentsOf: [10, 30, 50]))
	/// // Prints "true"
	/// ```
	///
	/// - Parameter elements: The elements to find in this sequence.
	/// - Returns: `true` if the element was found in this sequence; otherwise, `false`.
	public func contains(contentsOf elements: [Element]) -> Bool
	where Element: Equatable {
		for element in elements
		where self.contains(element) == false {
			return false
		}

		return true
	}
	
	/// Returns the total number of times the elements in this sequence satisfies the given predicate.
	///
	/// ```swift
	/// let sequence: [String] = ["h", "e", "l", "l", "o"]
	/// print(sequence.count(where: { $0 == "l" }))
	/// // Prints "2"
	/// ```
	///
	/// - Parameter predicate: A closure that takes an element as its argument and returns a boolean value that indicates whether the passed element satisfies the given predicate.
	/// - Throws: Rethrows a thrown error.
	/// - Returns: The total number of times the elements in this sequence satisfies the given predicate
	public func count(where predicate: (Iterator.Element) throws -> Bool)
	rethrows -> Int {
		var count: Int = 0
		
		for element in self
		where try predicate(element) {
			count += 1
		}
		
		return count
	}
}
