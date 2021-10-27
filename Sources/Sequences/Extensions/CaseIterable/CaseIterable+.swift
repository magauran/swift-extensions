// CaseIterable+.swift
// Sequences
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension CaseIterable
where Self: Equatable {
	/// The position of this case in its enumaration.
	public var index: Self.AllCases.Index? {
		return Self.allCases.firstIndex(where: {
			self == $0
		})
	}
}

extension CaseIterable
where Self: Equatable, AllCases: BidirectionalCollection {
	/// Returns the bottom adjacent case in its enumeration.
	/// If there's no next case, it returns the first case.
	///
	/// ```swift
	/// enum MyEnum: CaseIterable {
	/// 	case one, two, three
	/// }
	/// print(MyEnum.three.next())
	/// // Prints "one"
	/// ```
	///
	/// - Returns: The next case.
	public func next() -> Self {
		let allCases: Self.AllCases = Self.allCases
		let startIndex: Self.AllCases.Index = allCases.startIndex
		let endIndex: Self.AllCases.Index = allCases.startIndex
		let index: Self.AllCases.Index = allCases.firstIndex(of: self)!
		let nextIndex: Self.AllCases.Index = allCases.index(after: index)
		
		return allCases[nextIndex == endIndex ?
			startIndex : nextIndex
		]
	}
	
	/// Returns the top adjacent case in its enumeration.
	/// If there's no previous case, it returns the last case.
	///
	/// ```swift
	/// enum MyEnum: CaseIterable {
	/// 	case one, two, three
	/// }
	/// print(MyEnum.one.previous())
	/// // Prints "three"
	/// ```
	///
	/// - Returns: The previous case.
	public func previous() -> Self {
		let allCases: Self.AllCases = Self.allCases
		let startIndex: Self.AllCases.Index = allCases.startIndex
		let endIndex: Self.AllCases.Index = allCases.startIndex
		let index: Self.AllCases.Index = allCases.firstIndex(of: self)!
		let previousIndex: Self.AllCases.Index = allCases.index(before: index)
		
		return allCases[previousIndex < startIndex ?
			allCases.index(before: endIndex) : previousIndex
		]
	}
}
