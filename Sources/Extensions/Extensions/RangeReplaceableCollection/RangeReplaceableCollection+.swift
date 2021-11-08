// RangeReplaceableCollection+.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension RangeReplaceableCollection {
	/// Removes and returns the first element in this collection that satisfies the given predicate.
	///
	/// ```swift
	/// var collection: [String] =  ["h", "e", "l", "l", "o"]
	/// collection.removeFirst(where: { $0 == "l" })
	/// print(collection)
	/// // Prints "["h", "e", "l", "o"]"
	/// ```
	///
	/// - Parameter predicate: A closure that takes an element as its argument and returns a boolean value that indicates whether the passed element represents a match.
	/// - Throws: Rethrows a thrown error.
	/// - Returns: A collection with an element removed.
	@discardableResult
	public mutating func removeFirst(where predicate: (Element) throws -> Bool)
	rethrows -> Self.Element? {
		guard let index: Self.Index = try self.firstIndex(where: { (element) in
			try predicate(element) == true
		}) else {
			return nil
		}
		
		return self.remove(at: index)
	}
	
	/// Removes and returns the last element in this collection that satisfies the given predicate.
	///
	/// ```swift
	/// var collection: [String] =  ["h", "e", "l", "l", "o"]
	/// collection.removeLast(where: { $0 == "l" })
	/// print(collection)
	/// // Prints "["h", "e", "l", "o"]"
	/// ```
	///
	/// - Parameter predicate: A closure that takes an element as its argument and returns a boolean value that indicates whether the passed element represents a match.
	/// - Throws: Rethrows a thrown error.
	/// - Returns: A collection with an element removed.
	@discardableResult
	public mutating func removeLast(where predicate: (Element) throws -> Bool)
	rethrows -> Self.Element?
	where Self: BidirectionalCollection {
		guard let index: Self.Index = try self.lastIndex(where: { (element) in
			try predicate(element) == true
		}) else {
			return nil
		}
		
		return self.remove(at: index)
	}
	
	/// Removes and returns a random element from this collection.
	///
	/// ```swift
	/// var collection: [UInt] = [10, 20, 30, 40, 50]
	/// collection.removeRandomElement()
	/// ```
	///
	/// - Returns: A collection with a random element removed.
	@discardableResult
	public mutating func removeRandomElement() -> Element? {
		guard let randomIndex = self.indices.randomElement() else {
			return nil
		}
		
		return self.remove(at: randomIndex)
	}
}
