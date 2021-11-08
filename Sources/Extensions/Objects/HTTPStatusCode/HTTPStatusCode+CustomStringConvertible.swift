// HTTPStatusCode+CustomStringConvertible.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

extension HTTPStatusCode: CustomStringConvertible {
	public var description: String {
		switch self {
		case .continue:
			return "Continue"
		case .switchingProtocols:
			return "Switching Protocols"
		case .ok:
			return "OK"
		case .created:
			return "Created"
		case .accepted:
			return "Accepted"
		case .nonAuthoritativeInformation:
			return "Non-Authoritative Information"
		case .noContent:
			return "No Content"
		case .resetContent:
			return "Reset Content"
		case .partialContent:
			return "Partial Content"
		case .multipleChoices:
			return "Multiple Choices"
		case .movedPermanently:
			return "Moved Permanently"
		case .found:
			return "Found"
		case .seeOther:
			return "See Other"
		case .notModified:
			return "Not Modified"
		case .useProxy:
			return "Use Proxy"
		case .temporaryRedirect:
			return "Temporary Redirect"
		case .badRequest:
			return "Bad Request"
		case .unauthorized:
			return "Unauthorized"
		case .paymentRequired:
			return "Payment Required"
		case .forbidden:
			return "Forbidden"
		case .notFound:
			return "Not Found"
		case .methodNotAllowed:
			return "Method Not Allowed"
		case .notAcceptable:
			return "Not Acceptable"
		case .proxyAuthenticationRequired:
			return "Proxy Authentication Required"
		case .requestTimeout:
			return "Request Timeout"
		case .conflict:
			return "Conflict"
		case .gone:
			return "Gone"
		case .lengthRequired:
			return "Length Required"
		case .preconditionFailed:
			return "Precondition Failed"
		case .requestEntityTooLarge:
			return "Request Entity Too Large"
		case .requestURITooLong:
			return "Request URI Too Long"
		case .unsupportedMediaType:
			return "Unsupported Media Type"
		case .requestedRangeNotSatisfiable:
			return "Requested Range Not Satisfiable"
		case .expectationFailed:
			return "Expectation Failed"
		case .internalServerError:
			return "Internal Server Error"
		case .notImplemented:
			return "Not Implemented"
		case .badGateway:
			return "Bad Gateway"
		case .serviceUnavailable:
			return "Service Unavailable"
		case .gatewayTimeout:
			return "Gateway Timeout"
		case .HTTPVersionNotSupported:
			return "HTTP Version Not Supported"
		}
	}
}
