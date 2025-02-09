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
	case crossX8
	case line8
	case octo16
	case cross16
	case line16
	case crossline16
	case crossocto16
	
	func positionArray() -> [Thread] {
		switch self {
		case .cross4:
			return [Thread(number: 1, angle: 0),
							Thread(number: 2, angle: 90),
							Thread(number: 3, angle: 180),
							Thread(number: 4, angle: 270)]
		case .octo8:
			return [Thread(number: 1, angle: 0),
							Thread(number: 2, angle: 45),
							Thread(number: 3, angle: 90),
							Thread(number: 4, angle: 135),
							Thread(number: 5, angle: 180),
							Thread(number: 6, angle: 225),
							Thread(number: 7, angle: 270),
							Thread(number: 8, angle: 315)]
		case .cross8:
			return [Thread(number: 1, angle: 350),
							Thread(number: 2, angle: 10),
							Thread(number: 3, angle: 80),
							Thread(number: 4, angle: 100),
							Thread(number: 5, angle: 170),
							Thread(number: 6, angle: 190),
							Thread(number: 7, angle: 260),
							Thread(number: 8, angle: 280)]
		case .crossX8:
			return [Thread(number: 1, angle: 305),
							Thread(number: 2, angle: 325),
							Thread(number: 3, angle: 35),
							Thread(number: 4, angle: 55),
							Thread(number: 5, angle: 125),
							Thread(number: 6, angle: 145),
							Thread(number: 7, angle: 215),
							Thread(number: 8, angle: 235)]
		case .line8:
			return [Thread(number: 1, angle: 330),
							Thread(number: 2, angle: 350),
							Thread(number: 3, angle: 10),
							Thread(number: 4, angle: 30),
							Thread(number: 5, angle: 150),
							Thread(number: 6, angle: 170),
							Thread(number: 7, angle: 190),
							Thread(number: 8, angle: 210)]
		case .octo16:
			return [Thread(number: 1, angle: 352),
							Thread(number: 2, angle: 8),
							Thread(number: 3, angle: 37),
							Thread(number: 4, angle: 53),
							Thread(number: 5, angle: 82),
							Thread(number: 6, angle: 98),
							Thread(number: 7, angle: 127),
							Thread(number: 8, angle: 143),
							Thread(number: 9, angle: 172),
							Thread(number: 10, angle: 188),
							Thread(number: 11, angle: 217),
							Thread(number: 12, angle: 233),
							Thread(number: 13, angle: 262),
							Thread(number: 14, angle: 278),
							Thread(number: 15, angle: 307),
							Thread(number: 16, angle: 323)]
		case .cross16:
			return [Thread(number: 1, angle: 336),
							Thread(number: 2, angle: 352),
							Thread(number: 3, angle: 8),
							Thread(number: 4, angle: 24),
							Thread(number: 5, angle: 66),
							Thread(number: 6, angle: 82),
							Thread(number: 7, angle: 98),
							Thread(number: 8, angle: 114),
							Thread(number: 9, angle: 156),
							Thread(number: 10, angle: 172),
							Thread(number: 11, angle: 188),
							Thread(number: 12, angle: 204),
							Thread(number: 13, angle: 246),
							Thread(number: 14, angle: 262),
							Thread(number: 15, angle: 278),
							Thread(number: 16, angle: 294)]
		case .line16:
			return [Thread(number: 1, angle: 304),
							Thread(number: 2, angle: 320),
							Thread(number: 3, angle: 336),
							Thread(number: 4, angle: 352),
							Thread(number: 5, angle: 8),
							Thread(number: 6, angle: 24),
							Thread(number: 7, angle: 40),
							Thread(number: 8, angle: 56),
							Thread(number: 9, angle: 124),
							Thread(number: 10, angle: 140),
							Thread(number: 11, angle: 156),
							Thread(number: 12, angle: 172),
							Thread(number: 13, angle: 188),
							Thread(number: 14, angle: 204),
							Thread(number: 15, angle: 220),
							Thread(number: 16, angle: 236)]
		case .crossline16:
			return [Thread(number: 1, angle: 320),
							Thread(number: 2, angle: 336),
							Thread(number: 3, angle: 352),
							Thread(number: 4, angle: 8),
							Thread(number: 5, angle: 24),
							Thread(number: 6, angle: 40),
							Thread(number: 7, angle: 82),
							Thread(number: 8, angle: 98),
							Thread(number: 9, angle: 140),
							Thread(number: 10, angle: 156),
							Thread(number: 11, angle: 172),
							Thread(number: 12, angle: 188),
							Thread(number: 13, angle: 204),
							Thread(number: 14, angle: 220),
							Thread(number: 15, angle: 262),
							Thread(number: 16, angle: 278)]
		case .crossocto16:
			return [Thread(number: 1, angle: 0),
							Thread(number: 2, angle: 29),
							Thread(number: 3, angle: 45),
							Thread(number: 4, angle: 61),
							Thread(number: 5, angle: 90),
							Thread(number: 6, angle: 119),
							Thread(number: 7, angle: 135),
							Thread(number: 8, angle: 151),
							Thread(number: 9, angle: 180),
							Thread(number: 10, angle: 209),
							Thread(number: 11, angle: 225),
							Thread(number: 12, angle: 241),
							Thread(number: 13, angle: 270),
							Thread(number: 14, angle: 299),
							Thread(number: 15, angle: 315),
							Thread(number: 16, angle: 331)]
		default:
			return [Thread(number: 1, angle: 0),
							Thread(number: 2, angle: 90),
							Thread(number: 3, angle: 180),
							Thread(number: 4, angle: 270)]
		}
	}
}

struct Thread {
	var number: Int = 1
	var angle: Int = 0
	var position: CGPoint {
		CGPoint(x: sin(Double(angle) * Double.pi/180.0),
						y: -cos(Double(angle) * Double.pi/180.0))
	}
}
