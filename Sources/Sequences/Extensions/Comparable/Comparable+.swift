// Comparable+.swift
// Sequences
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension Comparable {
	/// Returns a boolean value indicating whether this value is within a specified closed range.
	///
	/// ```swift
	/// let number: Int = 2
	/// print(number.isWithin(1...3))
	/// // Prints "true"
	/// ```
	///
	/// - Parameter closedRange: An interval from a lower bound up to, and including, an upper bound.
	/// - Returns: A boolean value.
	public func isWithin(_ closedRange: ClosedRange<Self>) -> Bool {
		return closedRange ~= self
	}
	
	/// Returns a boolean value indicating whether this value is within two specified values.
	///
	/// ```swift
	/// let number: Int = 2
	/// print(number.isWithin(1, to: 3))
	/// // Prints "true"
	/// ```
	///
	/// - Parameters:
	/// 	- lowerBound: The lower bound value.
	/// 	- upperBound: The upper bound value.
	/// - Returns: A boolean value.
	/// - Warning: The lower bound value must be smaller than the upper bound value.
	public func isWithin(_ lowerBound: Self, to upperBound: Self) -> Bool {
		precondition(lowerBound < upperBound)
		
		let closedRange: ClosedRange<Self> = lowerBound...upperBound
		
		return self.isWithin(closedRange)
	}
}
