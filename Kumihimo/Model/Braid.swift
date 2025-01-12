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
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}
