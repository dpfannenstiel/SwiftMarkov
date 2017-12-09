//
//  MarkovValue.swift
//  SwiftMarkov
//
//  Created by Dustin Pfannenstiel on 2/12/17.
//  Copyright © 2017 Dustin Pfannenstiel. All rights reserved.
//

import Foundation

enum MarkovValue<T:Comparable> {
	case end
	case value(T)
	
	init(value:T) {
		self = .value(value)
	}
	
	init() {
		self = .end
	}
	
}

extension MarkovValue:Equatable {
	static func ==<T>(lhs:MarkovValue<T>, rhs:MarkovValue<T>) -> Bool {
		switch (lhs, rhs) {
		case (let .value(lValue), let .value(rValue)):
			return lValue == rValue
		case (.end, .end):
			return true
		default:
			return false
		}
	}
}

extension MarkovValue:Comparable {
	static func <<T>(lhs:MarkovValue<T>, rhs:MarkovValue<T>) -> Bool {
		switch (lhs, rhs) {
		case (let .value(lValue), let .value(rValue)):
			return lValue < rValue
		case (.value(_), .end):
			return true
		default:
			return false
		}
	}
	static func ><T>(lhs:MarkovValue<T>, rhs:MarkovValue<T>) -> Bool {
		switch (lhs, rhs) {
		case (let .value(lValue), let .value(rValue)):
			return lValue > rValue
		case (.end, .value(_)):
			return true
		default:
			return false
		}
	}
	static func >=<T>(lhs:MarkovValue<T>, rhs:MarkovValue<T>) -> Bool {
		return lhs > rhs || lhs == rhs
	}
	static func <=<T>(lhs:MarkovValue<T>, rhs:MarkovValue<T>) -> Bool {
		return lhs < rhs || lhs == rhs
	}
}
