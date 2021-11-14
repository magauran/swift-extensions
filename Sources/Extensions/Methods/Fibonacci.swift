// Fibonacci.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// Returns the fibonnaci sequence with the specified length.
///
/// ```swift
/// print(fibonacci(10))
/// // Prints "[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]"
/// ```
///
/// - Parameter count: The length of the sequnce.
/// - Returns: The fibonacci sequence.
public func fibonacci<Value>(_ count: Array.Index) -> [Value]
where Value: Comparable & Numeric & Strideable, Value.Stride: SignedInteger {
	guard count > 1 else {
		return [.zero]
	}
	
	var sequence: [Value] = [0, 1]

	for _ in 2..<count {
		if let lhs: Value = sequence.secondLast,
		   let rhs: Value = sequence.last {
			sequence.append(lhs + rhs)
		}
	}
	
	return sequence
}
