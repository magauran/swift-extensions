// Collection+.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension Collection {
	/// The position of the first element in this collection.
	/// If the collection doesn't contain an element, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.firstIndex)
	/// // Prints "0"
	/// ```
	public var firstIndex: Int? {
		guard self.isEmpty == false else {
			return nil
		}
		
		return .zero
	}
	
	/// The position of the second element in this collection.
	/// If the collection doesn't contain two elements, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.secondIndex)
	/// // Prints "1"
	/// ```
	private var secondIndex: Int? {
		return self.indices.index(self.startIndex, offsetBy: 1, limitedBy: self.endIndex) as? Int
	}
	
	/// The position of the third element in this collection.
	/// If the collection doesn't contain three elements, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.thirdIndex)
	/// // Prints "2"
	/// ```
	private var thirdIndex: Int? {
		return self.indices.index(self.startIndex, offsetBy: 2, limitedBy: self.endIndex) as? Int
	}
	
	/// Returns an array containing, in order, the elements in this collection that satisfy the given predicate.
	///
	/// ```swift
	/// let collection: [String] = ["h", "e", "l", "l", "o"]
	/// print(collection.indices(where: { $0 == "l" })
	/// // Prints "[2, 3]"
	/// ```
	///
	/// - Parameter condition: The condition to evaluate each element against.
	/// - Throws: Rethrows a thrown error.
	/// - Returns: A collection of all indices where the specified condition evaluates to true.
	public func indices(where condition: (Self.Element) throws -> Bool)
	rethrows -> [Self.Index] {
		return try self.indices.filter({ (index) in
			try condition(self[index])
		})
	}
}

extension Collection {
	/// The second element of this collection.
	/// If the collection doesn't contain two indices, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.second)
	/// // Prints "20"
	/// ```
	@available(swift, deprecated: 5.5)
	public var second: Self.Element? {
		guard let index: Self.Index = self.secondIndex as? Self.Index else {
			return nil
		}
		
		return self[index]

	}

	/// The third element of this collection.
	/// If the collection doesn't contain three indices, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.third)
	/// // Prints "30"
	/// ```
	@available(swift, deprecated: 5.5)
	public var third: Self.Element? {
		guard let index: Self.Index = self.thirdIndex as? Self.Index else {
			return nil
		}
		
		return self[index]
	}
}
