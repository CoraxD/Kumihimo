//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8eView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8eShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8eShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8eShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8eShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8eShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8eShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8eShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8eShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8eLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
			.frame(width: 260, height: 350)
    }
}

#Preview {
    Grid8eView()
		.environmentObject(BraidStorage())
}
