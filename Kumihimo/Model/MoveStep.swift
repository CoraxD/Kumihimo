//
//  MoveStep.swift
//  Kumihimo
//
//  Created by Дмитрий on 05.02.2025.
//

import Foundation

struct MoveStep: Codable {
	var passThread: [Int] = [90, 270]
	var leftMove: Move = Move(start: 185, finish: 355, type: .line)
	var rightMove: Move = Move(start: 5, finish: 175, type: .line)
	var order: Order = .left
}

struct Move: Codable {
	var start: Int = 0
	var finish: Int = 180
	var type: MoveType = .line
}

enum MoveType: String, Codable {
	case line
	case inner
	case outer
}

enum Order: String, Codable {
	case none
	case left
	case right
}
