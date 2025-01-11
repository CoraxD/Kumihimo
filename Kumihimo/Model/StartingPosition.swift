//
//  StartingPosition.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import Foundation

enum StartingPosition: String, Codable {
	case cross4
	case octo8
	case cross8
	case line8
	
	func positionArray() -> [Thread] {
		switch self {
		case .cross4:
			return [Thread(number: 1, position: CGPoint(x: 0.0, y: -1.0)),
							Thread(number: 2, position: CGPoint(x: 1.0, y: 0.0)),
							Thread(number: 3, position: CGPoint(x: 0.0, y: 1.0)),
							Thread(number: 4, position: CGPoint(x: -1.0, y: 0.0))]
		case .octo8:
			return [Thread(number: 1, position: CGPoint(x: 0.0, y: -1.0)),
							Thread(number: 2, position: CGPoint(x: 0.72, y: -0.72)),
							Thread(number: 3, position: CGPoint(x: 1.0, y: 0.0)),
							Thread(number: 4, position: CGPoint(x: 0.72, y: 0.72)),
							Thread(number: 5, position: CGPoint(x: 0.0, y: 1.0)),
							Thread(number: 6, position: CGPoint(x: -0.72, y: 0.72)),
							Thread(number: 7, position: CGPoint(x: -1.0, y: 0.0)),
							Thread(number: 8, position: CGPoint(x: -0.72, y: -0.72))]
		default:
			return [Thread(number: 1, position: CGPoint(x: 0.0, y: 1.0))]
		}
	}
}

struct Thread {
	var number: Int = 1
	var position: CGPoint = CGPoint(x: 0.0, y: 0.0)
}
