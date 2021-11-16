// StringProtocol+.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

extension StringProtocol {
	/// Returns this instance with the first character uppercased.
	///
	/// - returns: The first character uppercased.
	public func uppercasedFirst() -> String {
		return prefix(1).uppercased() + dropFirst()
	}
	
	/// Returns this instance with the first character lowercased.
	///
	/// - returns: The first character lowercased.
	public func lowercasedFirst() -> String {
		return prefix(1).lowercased() + dropFirst()
	}
}
