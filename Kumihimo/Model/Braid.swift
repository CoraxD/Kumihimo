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
	var grid: GridType = .grid4a
	var profile: ProfileType = .thorus
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}


enum GridType: String, Codable {
	case grid4a
	case grid8a
	case grid8b
	case grid8c
	case grid8d
	case grid8e
	case grid8f
	case grid8g
	case grid8h
	case grid8j
	case grid8k
	case grid8l
	case grid8m
	case grid8n
}

enum ProfileType: String, Codable {
	case circle
	case square
	case cross
	case rectangle
	case thorus
	case line
}
