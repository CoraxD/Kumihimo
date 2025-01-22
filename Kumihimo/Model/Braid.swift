//
//  Braid.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import Foundation
import SwiftUI

struct Braid: Codable, Identifiable, Equatable, Hashable {
	
	static func == (lhs: Braid, rhs: Braid) -> Bool {
		lhs.id == rhs.id
	}
	
	var id = UUID()
	var name: String = "Braid"
	var threadCount: Int = 4
	var startingPosition: StartingPosition = .cross4
	var profile: ProfileType = .spiral
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}


enum ProfileType: String, Codable {
	case circle
	case square
	case cross
	case rectangle
	case thorus
	case line
	case round
	case trapezium
	case gantel
	case xSquare
	case octo
	case spiral
}
