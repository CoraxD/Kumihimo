//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8jView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8jShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8jShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8jShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8jShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8jShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8jShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8jShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8jShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8jLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
			.frame(width: 320, height: 200)
    }
}

#Preview {
    Grid8jView()
		.environmentObject(BraidStorage())
}
