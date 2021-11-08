// HTTPStatusType+CustomStringConvertible.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension HTTPStatusType: CustomStringConvertible {
	public var description: String {
		switch self {
		case .informational:
			return "Informational"
		case .successful:
			return "Successful"
		case .redirection:
			return "Redirection"
		case .clientError:
			return "Client Error"
		case .serverError:
			return "Server Error"
		}
	}
}
