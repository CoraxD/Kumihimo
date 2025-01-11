//
//  Grid.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import Foundation

struct Grid: Codable {
	var cells: [Cell] = []
}

struct Cell: Hashable, Codable {
	var number: Int = 1
	var numOffset: CGPoint = CGPoint(x: 0, y: 0)
	var corners: [CGPoint] = []
}
