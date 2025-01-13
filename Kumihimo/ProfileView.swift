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
						.frame(width: 40, height: 20)
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
						.stroke(.black, lineWidth: 4)
						.frame(width: 50, height: 10)
				default:
					Circle()
						.fill(.white)
						.stroke(.black, lineWidth: 4)
						.frame(width: 30, height: 30)
				}
			}
    }
}

#Preview {
	ProfileView()
		.environmentObject(BraidStorage())
}
