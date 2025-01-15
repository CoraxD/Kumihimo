//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8lView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8lShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8lShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8lShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8lShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8lShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8lShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8lShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8lShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8lLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
			.frame(width: 300, height: 270)
    }
}

#Preview {
    Grid8lView()
		.environmentObject(BraidStorage())
}
