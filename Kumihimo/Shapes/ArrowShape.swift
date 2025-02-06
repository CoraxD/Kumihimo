//
//  ArrowShape.swift
//  Kumihimo
//
//  Created by Дмитрий on 05.02.2025.
//

import SwiftUI

struct ArrowShape: Shape {
	var radius: CGFloat = 100
	var move: Move = Move()
	func path(in rect: CGRect) -> Path {
		
		let from: CGPoint = CGPoint(x: radius * sin(Double(move.start) * Double.pi/180.0),
																y: radius * -cos(Double(move.start) * Double.pi/180.0))
		let to: CGPoint = CGPoint(x: radius * sin(Double(move.finish) * Double.pi/180.0),
															y: radius * -cos(Double(move.finish) * Double.pi/180.0))
		
		var path = Path()
		path.move(to: from)
		
		switch move.type {
		case .line:
			path.addLine(to: to)
			let angle = atan2(to.y - from.y, to.x - from.x)
			let arrowLength: CGFloat = 5
			let arrowPoint1 = CGPoint(x: to.x - arrowLength * cos(angle - .pi / 6), y: to.y - arrowLength * sin(angle - .pi / 6))
			let arrowPoint2 = CGPoint(x: to.x - arrowLength * cos(angle + .pi / 6), y: to.y - arrowLength * sin(angle + .pi / 6))
			
			path.move(to: arrowPoint1)
			path.addLine(to: to)
			path.addLine(to: arrowPoint2)
		case .inner:
			let control1: CGPoint = CGPoint(x: from.x / 3, y: from.y / 3)
			let control2: CGPoint = CGPoint(x: to.x / 3, y: to.y / 3)
			path.addCurve(to: to, control1: control1, control2: control2)
			let angle = atan2(to.y - control2.y, to.x - control2.x)
			let arrowLength: CGFloat = 5
			let arrowPoint1 = CGPoint(x: to.x - arrowLength * cos(angle - .pi / 6), y: to.y - arrowLength * sin(angle - .pi / 6))
			let arrowPoint2 = CGPoint(x: to.x - arrowLength * cos(angle + .pi / 6), y: to.y - arrowLength * sin(angle + .pi / 6))
			
			path.move(to: arrowPoint1)
			path.addLine(to: to)
			path.addLine(to: arrowPoint2)
		}
		return path
	}
}
