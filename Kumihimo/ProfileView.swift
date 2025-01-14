	//
	//  ProfileView.swift
	//  Kumihimo
	//
	//  Created by Дмитрий on 12.01.2025.
	//

import SwiftUI

struct ProfileView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	var body: some View {
		ZStack {
			switch braidStorage.curBraid.profile {
			case .circle:
				Circle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 30, height: 30)
			case .square:
				Rectangle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 30, height: 30)
			case .cross:
				Rectangle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 40, height: 10)
				Rectangle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 10, height: 40)
			case .rectangle:
				Rectangle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 40, height: 15)
			case .thorus:
				Rectangle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 30, height: 15)
				Circle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 15, height: 15)
					.offset(x: -15)
				Circle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 15, height: 15)
					.offset(x: 15)
			case .line:
				Rectangle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 50, height: 10)
			case .trapezium:
				Path { path in
					path.move(to: CGPoint(x: 0, y: 15))
					path.addLine(to: CGPoint(x: 10, y: 0))
					path.addLine(to: CGPoint(x: 35, y: 0))
					path.addLine(to: CGPoint(x: 45, y: 15))
					path.closeSubpath()
				}
				.fill(.white)
				.stroke(.black, lineWidth: 3)
				.frame(width: 40, height: 20)
			case .round:
				RoundedRectangle(cornerRadius: 7.5)
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 40, height: 15)
			case .gantel:
				Path { path in
					path.move(to: CGPoint(x: 0, y: 20))
					path.addLine(to: CGPoint(x: 0, y: 0))
					path.addLine(to: CGPoint(x: 12, y: 0))
					path.addLine(to: CGPoint(x: 17, y: 5))
					path.addLine(to: CGPoint(x: 23, y: 5))
					path.addLine(to: CGPoint(x: 28, y: 0))
					path.addLine(to: CGPoint(x: 40, y: 0))
					path.addLine(to: CGPoint(x: 40, y: 20))
					path.addLine(to: CGPoint(x: 28, y: 20))
					path.addLine(to: CGPoint(x: 23, y: 15))
					path.addLine(to: CGPoint(x: 17, y: 15))
					path.addLine(to: CGPoint(x: 12, y: 20))
					path.closeSubpath()
				}
				.fill(.white)
				.stroke(.black, lineWidth: 3)
				.frame(width: 40, height: 20)
			case .xSquare:
				Rectangle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 30, height: 30)
				Path { path in
					path.move(to: CGPoint(x: 6, y: 0))
					path.addLine(to: CGPoint(x: 13, y: 9))
					path.addLine(to: CGPoint(x: 17, y: 9))
					path.addLine(to: CGPoint(x: 24, y: 0))
					path.move(to: CGPoint(x: 6, y: 30))
					path.addLine(to: CGPoint(x: 13, y: 21))
					path.addLine(to: CGPoint(x: 17, y: 21))
					path.addLine(to: CGPoint(x: 24, y: 30))
				}
				.stroke(.black, lineWidth: 2)
				.frame(width: 30, height: 30)
				Path { path in
					path.move(to: CGPoint(x: 0, y: 1))
					path.addLine(to: CGPoint(x: 11, y: 14))
					path.addLine(to: CGPoint(x: 11, y: 16))
					path.addLine(to: CGPoint(x: 0, y: 29))
					path.move(to: CGPoint(x: 30, y: 1))
					path.addLine(to: CGPoint(x: 19, y: 14))
					path.addLine(to: CGPoint(x: 19, y: 16))
					path.addLine(to: CGPoint(x: 30, y: 29))
				}
				.stroke(.black, style: StrokeStyle( lineWidth: 2, dash: [5, 3]))
				.frame(width: 30, height: 30)
			case .octo:
				Path { path in
					path.move(to: CGPoint(x: 0, y: 8))
					path.addLine(to: CGPoint(x: 8, y: 0))
					path.addLine(to: CGPoint(x: 22, y: 0))
					path.addLine(to: CGPoint(x: 30, y: 8))
					path.addLine(to: CGPoint(x: 30, y: 22))
					path.addLine(to: CGPoint(x: 22, y: 30))
					path.addLine(to: CGPoint(x: 8, y: 30))
					path.addLine(to: CGPoint(x: 0, y: 22))
					path.closeSubpath()
				}
				.fill(.white)
				.stroke(.black, lineWidth: 3)
				.frame(width: 30, height: 30)
			}
		}
	}
}

#Preview {
	ProfileView()
		.environmentObject(BraidStorage())
		.padding()
}
