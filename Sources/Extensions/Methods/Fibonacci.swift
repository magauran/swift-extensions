// Fibonacci.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// Returns the fibonnaci sequence.
///
/// ```swift
/// print(fibonacci(9))
/// // Prints "[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]"
/// ```
///
/// - Parameter numbers: The length of the sequnce.
/// - Returns: The fibonacci sequence.
public func fibonacci<Value>(_ count: Array.Index) -> [Value]
where Value: Comparable & Numeric & Strideable, Value.Stride: SignedInteger {
	guard count > 1 else {
		return [.zero]
	}
	
	var sequence: [Value] = [0, 1]

	for index in 2...count {
		sequence.append(sequence[index - 1] + sequence[index - 2])
	}
	
	return sequence
}
