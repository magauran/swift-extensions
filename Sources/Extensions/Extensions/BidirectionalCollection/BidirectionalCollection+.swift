// BidirectionalCollection+.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension BidirectionalCollection {
	/// The position of the last element in this collection.
	/// If the collection doesn't contain an element, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.lastIndex)
	/// // Prints "4"
	/// ```
	public var lastIndex: Int? {
		return self.indices.index(self.endIndex, offsetBy: -1, limitedBy: self.startIndex) as? Int
	}
	
	/// The position of the second element in this collection.
	/// If the collection doesn't contain two elements, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.secondLastIndex)
	/// // Prints "3"
	/// ```
	private var secondLastIndex: Int? {
		return self.indices.index(self.endIndex, offsetBy: -2, limitedBy: self.startIndex) as? Int
	}
	
	/// The position of the third last element in this collection.
	/// If the collection doesn't contain three elements, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.thirdLastIndex)
	/// // Prints "2"
	/// ```
	private var thirdLastIndex: Int? {
		return self.indices.index(self.endIndex, offsetBy: -3, limitedBy: self.startIndex) as? Int
	}
}

extension BidirectionalCollection {
	/// The second last element of this collection.
	/// If the collection doesn't contain two indices, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.secondLast)
	/// // Prints "40"
	/// ```
	@available(swift, deprecated: 5.5)
	public var secondLast: Self.Element? {
		guard let index: Self.Index = self.secondLastIndex as? Self.Index else {
			return nil
		}
		
		return self[index]
	}
	
	/// The third last element of this collection.
	/// If the collection doesn't contain three indices, the value of this property is nil.
	///
	/// ```swift
	/// let collection: [UInt] = [10, 20, 30, 40, 50]
	/// print(collection.thirdLast)
	/// // Prints "30"
	/// ```
	@available(swift, deprecated: 5.5)
	public var thirdLast: Self.Element? {
		guard let index: Self.Index = self.thirdLastIndex as? Self.Index else {
			return nil
		}
		
		return self[index]
	}
}
