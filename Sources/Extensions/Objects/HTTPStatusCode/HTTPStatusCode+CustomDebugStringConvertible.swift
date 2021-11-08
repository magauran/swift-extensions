// HTTPStatusCode+CustomDebugStringConvertible.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension HTTPStatusCode: CustomDebugStringConvertible {
	public var debugDescription: String {
		return "\(self.rawValue) - \(self.description)"
	}
}
