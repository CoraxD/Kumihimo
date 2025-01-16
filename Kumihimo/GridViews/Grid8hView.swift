//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8hView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8hShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8hShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8hShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8hShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8hShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8hShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8hShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8hShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8hLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
			.padding(20)
    }
}

#Preview {
    Grid8hView()
		.environmentObject(BraidStorage())
}
