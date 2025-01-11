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
	var grid: Grid = Grid(cells: [Cell(number: 1, numOffset: CGPoint(x: 32, y: 47), corners: [CGPoint(x: 15, y: 15),
																																														CGPoint(x: 50, y: 15),
																																														CGPoint(x: 50, y: 80),
																																														CGPoint(x: 15, y: 80)]),
																Cell(number: 2, numOffset: CGPoint(x: 67, y: 82), corners: [CGPoint(x: 50, y: 50),
																																														CGPoint(x: 85, y: 50),
																																														CGPoint(x: 85, y: 115),
																																														CGPoint(x: 50, y: 115)]),
																Cell(number: 3, numOffset: CGPoint(x: 102, y: 47), corners: [CGPoint(x: 85, y: 15),
																																														CGPoint(x: 120, y: 15),
																																														CGPoint(x: 120, y: 80),
																																														CGPoint(x: 85, y: 80)]),
																Cell(number: 4, numOffset: CGPoint(x: 137, y: 82), corners: [CGPoint(x: 120, y: 50),
																																														CGPoint(x: 155, y: 50),
																																														CGPoint(x: 155, y: 115),
																																														CGPoint(x: 120, y: 115)]),
																Cell(number: 3, numOffset: CGPoint(x: 32, y: 112), corners: [CGPoint(x: 15, y: 80),
																																														CGPoint(x: 50, y: 80),
																																														CGPoint(x: 50, y: 145),
																																														CGPoint(x: 15, y: 145)]),
																Cell(number: 4, numOffset: CGPoint(x: 67, y: 147), corners: [CGPoint(x: 50, y: 115),
																																														CGPoint(x: 85, y: 115),
																																														CGPoint(x: 85, y: 180),
																																														CGPoint(x: 50, y: 180)]),
																Cell(number: 1, numOffset: CGPoint(x: 102, y: 112), corners: [CGPoint(x: 85, y: 80),
																																														CGPoint(x: 120, y: 80),
																																														CGPoint(x: 120, y: 145),
																																														CGPoint(x: 85, y: 145)]),
																Cell(number: 2, numOffset: CGPoint(x: 137, y: 147), corners: [CGPoint(x: 120, y: 115),
																																														 CGPoint(x: 155, y: 115),
																																														 CGPoint(x: 155, y: 180),
																																														 CGPoint(x: 120, y: 180)])])
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}
}
