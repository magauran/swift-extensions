// Collection+.swift
// Sequences
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension Collection {
	/// The position of the first element in a collection.
	/// If the collection doesn't contain an element, the value of this property is nil.
	///
	/// ```swift
	/// let collection: Array<Int> = [10, 20, 30, 40, 50]
	/// print(collection.firstIndex)
	/// // Prints "0"
	/// ```
	public var firstIndex: Int? {
		guard self.isEmpty == false else {
			return nil
		}
		
		return .zero
	}
	
	/// The position of the second element in a collection.
	/// If the collection doesn't contain two elements, the value of this property is nil.
	///
	/// ```swift
	/// let collection: Array<Int> = [10, 20, 30, 40, 50]
	/// print(collection.secondIndex)
	/// // Prints "1"
	/// ```
	private var secondIndex: Int? {
		return self.indices.index(self.startIndex, offsetBy: 1, limitedBy: self.endIndex) as? Int
	}
	
	/// The position of the third element in a collection.
	/// If the collection doesn't contain three elements, the value of this property is nil.
	///
	/// ```swift
	/// let collection: Array<Int> = [10, 20, 30, 40, 50]
	/// print(collection.thirdIndex)
	/// // Prints "2"
	/// ```
	private var thirdIndex: Int? {
		return self.indices.index(self.startIndex, offsetBy: 2, limitedBy: self.endIndex) as? Int
	}
}

extension Collection {
	/// The second element of this collection.
	/// If the collection doesn't contain two indices, the value of this property is nil.
	///
	/// ```swift
	/// let collection: Array<Int> = [10, 20, 30, 40, 50]
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
	/// let collection: Array<Int> = [10, 20, 30, 40, 50]
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
