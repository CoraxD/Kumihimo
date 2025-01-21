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
	case octo16
	case cross16
	case line16
	case crossline16
	case crossocto16
	
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
		case .cross8:
			return [Thread(number: 1, position: CGPoint(x: -0.15, y: -1.0)),
							Thread(number: 2, position: CGPoint(x: 0.15, y: -1.0)),
							Thread(number: 3, position: CGPoint(x: 1.0, y: -0.15)),
							Thread(number: 4, position: CGPoint(x: 1.0, y: 0.15)),
							Thread(number: 5, position: CGPoint(x: 0.15, y: 1.0)),
							Thread(number: 6, position: CGPoint(x: -0.15, y: 1.0)),
							Thread(number: 7, position: CGPoint(x: -1.0, y: 0.15)),
							Thread(number: 8, position: CGPoint(x: -1.0, y: -0.15))]
		case .line8:
			return [Thread(number: 1, position: CGPoint(x: -0.45, y: -0.9)),
							Thread(number: 2, position: CGPoint(x: -0.15, y: -1.0)),
							Thread(number: 3, position: CGPoint(x: 0.15, y: -1.0)),
							Thread(number: 4, position: CGPoint(x: 0.45, y: -0.9)),
							Thread(number: 5, position: CGPoint(x: 0.45, y: 0.9)),
							Thread(number: 6, position: CGPoint(x: 0.15, y: 1.0)),
							Thread(number: 7, position: CGPoint(x: -0.15, y: 1.0)),
							Thread(number: 8, position: CGPoint(x: -0.45, y: 0.9))]
		case .octo16:
			return [Thread(number: 1, position: CGPoint(x: -0.15, y: -1.0)),
							Thread(number: 2, position: CGPoint(x: 0.15, y: -1.0)),
							Thread(number: 3, position: CGPoint(x: 0.60, y: -0.80)),
							Thread(number: 4, position: CGPoint(x: 0.80, y: -0.60)),
							Thread(number: 5, position: CGPoint(x: 1.0, y: -0.15)),
							Thread(number: 6, position: CGPoint(x: 1.0, y: 0.15)),
							Thread(number: 7, position: CGPoint(x: 0.8, y: 0.6)),
							Thread(number: 8, position: CGPoint(x: 0.6, y: 0.8)),
							Thread(number: 9, position: CGPoint(x: 0.15, y: 1.0)),
							Thread(number: 10, position: CGPoint(x: -0.15, y: 1.0)),
							Thread(number: 11, position: CGPoint(x: -0.6, y: 0.8)),
							Thread(number: 12, position: CGPoint(x: -0.8, y: 0.6)),
							Thread(number: 13, position: CGPoint(x: -1.0, y: 0.15)),
							Thread(number: 14, position: CGPoint(x: -1.0, y: -0.15)),
							Thread(number: 15, position: CGPoint(x: -0.8, y: -0.6)),
							Thread(number: 16, position: CGPoint(x: -0.6, y: -0.8))]
		case .cross16:
			return [Thread(number: 1, position: CGPoint(x: -0.45, y: -0.9)),
							Thread(number: 2, position: CGPoint(x: -0.15, y: -1.0)),
							Thread(number: 3, position: CGPoint(x: 0.15, y: -1.0)),
							Thread(number: 4, position: CGPoint(x: 0.45, y: -0.9)),
							Thread(number: 5, position: CGPoint(x: 0.9, y: -0.45)),
							Thread(number: 6, position: CGPoint(x: 1.0, y: -0.15)),
							Thread(number: 7, position: CGPoint(x: 1.0, y: 0.15)),
							Thread(number: 8, position: CGPoint(x: 0.9, y: 0.45)),
							Thread(number: 9, position: CGPoint(x: 0.45, y: 0.9)),
							Thread(number: 10, position: CGPoint(x: 0.15, y: 1.0)),
							Thread(number: 11, position: CGPoint(x: -0.15, y: 1.0)),
							Thread(number: 12, position: CGPoint(x: -0.45, y: 0.9)),
							Thread(number: 13, position: CGPoint(x: -0.9, y: 0.45)),
							Thread(number: 14, position: CGPoint(x: -1.0, y: 0.15)),
							Thread(number: 15, position: CGPoint(x: -1.0, y: -0.15)),
							Thread(number: 16, position: CGPoint(x: -0.9, y: -0.45))]
		case .line16:
			return [Thread(number: 1, position: CGPoint(x: -0.88, y: -0.6)),
							Thread(number: 2, position: CGPoint(x: -0.66, y: -0.79)),
							Thread(number: 3, position: CGPoint(x: -0.41, y: -0.92)),
							Thread(number: 4, position: CGPoint(x: -0.14, y: -1.0)),
							Thread(number: 5, position: CGPoint(x: 0.14, y: -1.0)),
							Thread(number: 6, position: CGPoint(x: 0.41, y: -0.92)),
							Thread(number: 7, position: CGPoint(x: 0.66, y: -0.79)),
							Thread(number: 8, position: CGPoint(x: 0.88, y: -0.6)),
							Thread(number: 9, position: CGPoint(x: 0.88, y: 0.6)),
							Thread(number: 10, position: CGPoint(x: 0.66, y: 0.79)),
							Thread(number: 11, position: CGPoint(x: 0.41, y: 0.92)),
							Thread(number: 12, position: CGPoint(x: 0.14, y: 1.0)),
							Thread(number: 13, position: CGPoint(x: -0.14, y: 1.0)),
							Thread(number: 14, position: CGPoint(x: -0.41, y: 0.92)),
							Thread(number: 15, position: CGPoint(x: -0.66, y: 0.79)),
							Thread(number: 16, position: CGPoint(x: -0.88, y: 0.6))]
		case .crossline16:
			return [Thread(number: 1, position: CGPoint(x: -0.66, y: -0.79)),
							Thread(number: 2, position: CGPoint(x: -0.41, y: -0.92)),
							Thread(number: 3, position: CGPoint(x: -0.14, y: -1.0)),
							Thread(number: 4, position: CGPoint(x: 0.14, y: -1.0)),
							Thread(number: 5, position: CGPoint(x: 0.41, y: -0.92)),
							Thread(number: 6, position: CGPoint(x: 0.66, y: -0.79)),
							Thread(number: 7, position: CGPoint(x: 1.0, y: -0.15)),
							Thread(number: 8, position: CGPoint(x: 1.0, y: 0.15)),
							Thread(number: 9, position: CGPoint(x: 0.66, y: 0.79)),
							Thread(number: 10, position: CGPoint(x: 0.41, y: 0.92)),
							Thread(number: 11, position: CGPoint(x: 0.14, y: 1.0)),
							Thread(number: 12, position: CGPoint(x: -0.14, y: 1.0)),
							Thread(number: 13, position: CGPoint(x: -0.41, y: 0.92)),
							Thread(number: 14, position: CGPoint(x: -0.66, y: 0.79)),
							Thread(number: 15, position: CGPoint(x: -1.0, y: 0.15)),
							Thread(number: 16, position: CGPoint(x: -1.0, y: -0.15))]
		case .crossocto16:
			return [Thread(number: 1, position: CGPoint(x: -0.88, y: -0.6)),
							Thread(number: 2, position: CGPoint(x: -0.66, y: -0.79)),
							Thread(number: 3, position: CGPoint(x: -0.41, y: -0.92)),
							Thread(number: 4, position: CGPoint(x: -0.14, y: -1.0)),
							Thread(number: 5, position: CGPoint(x: 0.14, y: -1.0)),
							Thread(number: 6, position: CGPoint(x: 0.41, y: -0.92)),
							Thread(number: 7, position: CGPoint(x: 0.66, y: -0.79)),
							Thread(number: 8, position: CGPoint(x: 0.88, y: -0.6)),
							Thread(number: 9, position: CGPoint(x: 0.88, y: 0.6)),
							Thread(number: 10, position: CGPoint(x: 0.66, y: 0.79)),
							Thread(number: 11, position: CGPoint(x: 0.41, y: 0.92)),
							Thread(number: 12, position: CGPoint(x: 0.14, y: 1.0)),
							Thread(number: 13, position: CGPoint(x: -0.14, y: 1.0)),
							Thread(number: 14, position: CGPoint(x: -0.41, y: 0.92)),
							Thread(number: 15, position: CGPoint(x: -0.66, y: 0.79)),
							Thread(number: 16, position: CGPoint(x: -0.88, y: 0.6))]
		}
	}
}

struct Thread {
	var number: Int = 1
	var position: CGPoint = CGPoint(x: 0.0, y: 0.0)
}
