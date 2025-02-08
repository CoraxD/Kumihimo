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
					path.addLine(to: CGPoint(x: 8, y: 0))
					path.addLine(to: CGPoint(x: 37, y: 0))
					path.addLine(to: CGPoint(x: 45, y: 15))
					path.closeSubpath()
				}
				.fill(.white)
				.stroke(.black, lineWidth: 3)
				.frame(width: 45, height: 15)
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
			case .spiral:
				Circle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 30, height: 30)
				Path { path in
					path.move(to: CGPoint(x: 15, y: 12.18))
					path.addCurve(to: CGPoint(x: 12.73, y: 0.17), control1: CGPoint(x: 9.99, y: 12.18), control2: CGPoint(x: 9.97, y: 5.02))
					path.addCurve(to: CGPoint(x: 6.16, y: 14.45), control1: CGPoint(x: 7.71, y: 3.71), control2: CGPoint(x: 5.7, y: 9.8))
					path.addCurve(to: CGPoint(x: 11.44, y: 20.92), control1: CGPoint(x: 6.49, y: 17.79), control2: CGPoint(x: 8.55, y: 20.92))
					path.addCurve(to: CGPoint(x: 15, y: 17.82), control1: CGPoint(x: 13.56, y: 20.92), control2: CGPoint(x: 15, y: 19.67))
					path.addCurve(to: CGPoint(x: 17.27, y: 29.83), control1: CGPoint(x: 20.01, y: 17.82), control2: CGPoint(x: 20.03, y: 24.98))
					path.addCurve(to: CGPoint(x: 23.84, y: 15.55), control1: CGPoint(x: 22.29, y: 26.29), control2: CGPoint(x: 24.3, y: 20.2))
					path.addCurve(to: CGPoint(x: 18.56, y: 9.08), control1: CGPoint(x: 23.52, y: 12.21), control2: CGPoint(x: 21.45, y: 9.08))
					path.addCurve(to: CGPoint(x: 15, y: 12.18), control1: CGPoint(x: 16.44, y: 9.08), control2: CGPoint(x: 15, y: 10.33))
					path.closeSubpath()
				}
				.stroke(.black, style: StrokeStyle(lineWidth: 2, lineJoin: .round))
				.frame(width: 30, height: 30)
			case .ellipse:
				Ellipse()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 40, height: 20)
			case .roundCross:
				Circle()
					.fill(.white)
					.stroke(.black, lineWidth: 3)
					.frame(width: 30, height: 30)
				Circle()
					.fill(.white)
					.stroke(.gray, lineWidth: 2)
					.frame(width: 8, height: 8)
				Path { path in
						//// Bezier 1 Drawing
					path.move(to: CGPoint(x: 0.56, y: 19))
					path.addLine(to: CGPoint(x: 7, y: 19))
					path.addCurve(to: CGPoint(x: 11, y: 15), control1: CGPoint(x: 9.21, y: 19), control2: CGPoint(x: 11, y: 17.21))
					path.addCurve(to: CGPoint(x: 7, y: 11), control1: CGPoint(x: 11, y: 12.79), control2: CGPoint(x: 9.21, y: 11))
					path.addLine(to: CGPoint(x: 0.56, y: 11))
					
					
						//// Bezier 2 Drawing
					path.move(to: CGPoint(x: 11, y: 0.56))
					path.addLine(to: CGPoint(x: 11, y: 7))
					path.addCurve(to: CGPoint(x: 15, y: 11), control1: CGPoint(x: 11, y: 9.21), control2: CGPoint(x: 12.79, y: 11))
					path.addCurve(to: CGPoint(x: 19, y: 7), control1: CGPoint(x: 17.21, y: 11), control2: CGPoint(x: 19, y: 9.21))
					path.addLine(to: CGPoint(x: 19, y: 0.56))
					
					
						//// Bezier 3 Drawing
					path.move(to: CGPoint(x: 29.44, y: 11))
					path.addLine(to: CGPoint(x: 23, y: 11))
					path.addCurve(to: CGPoint(x: 19, y: 15), control1: CGPoint(x: 20.79, y: 11), control2: CGPoint(x: 19, y: 12.79))
					path.addCurve(to: CGPoint(x: 23, y: 19), control1: CGPoint(x: 19, y: 17.21), control2: CGPoint(x: 20.79, y: 19))
					path.addLine(to: CGPoint(x: 29.44, y: 19))
					
					
						//// Bezier 4 Drawing
					path.move(to: CGPoint(x: 19, y: 29.44))
					path.addLine(to: CGPoint(x: 19, y: 23))
					path.addCurve(to: CGPoint(x: 15, y: 19), control1: CGPoint(x: 19, y: 20.79), control2: CGPoint(x: 17.21, y: 19))
					path.addCurve(to: CGPoint(x: 11, y: 23), control1: CGPoint(x: 12.79, y: 19), control2: CGPoint(x: 11, y: 20.79))
					path.addLine(to: CGPoint(x: 11, y: 29.44))
				}
				.stroke(.black, style: StrokeStyle(lineWidth: 2, lineJoin: .round))
				.frame(width: 30, height: 30)
			case .Uprof:
				Path { path in
					path.move(to: CGPoint(x: 0, y: 15))
					path.addLine(to: CGPoint(x: 0, y: 0))
					path.addLine(to: CGPoint(x: 18, y: 0))
					path.addLine(to: CGPoint(x: 18, y: 8))
					path.addLine(to: CGPoint(x: 27, y: 8))
					path.addLine(to: CGPoint(x: 27, y: 0))
					path.addLine(to: CGPoint(x: 45, y: 0))
					path.addLine(to: CGPoint(x: 45, y: 15))
					path.closeSubpath()
				}
				.fill(.white)
				.stroke(.black, lineWidth: 3)
				.frame(width: 45, height: 15)
			case .Hprof:
				Path { path in
					path.move(to: CGPoint(x: 0, y: 15))
					path.addLine(to: CGPoint(x: 8, y: 0))
					path.addLine(to: CGPoint(x: 37, y: 0))
					path.addLine(to: CGPoint(x: 45, y: 15))
					path.closeSubpath()
				}
				.fill(.white)
				.stroke(.black, lineWidth: 3)
				.frame(width: 40, height: 20)
			case .castle:
				Path { path in
					path.move(to: CGPoint(x: 0, y: 15))
					path.addLine(to: CGPoint(x: 8, y: 0))
					path.addLine(to: CGPoint(x: 37, y: 0))
					path.addLine(to: CGPoint(x: 45, y: 15))
					path.closeSubpath()
				}
				.fill(.white)
				.stroke(.black, lineWidth: 3)
				.frame(width: 40, height: 20)
			}
		}
	}
}

#Preview {
	ProfileView()
		.environmentObject(BraidStorage())
		.padding()
}
