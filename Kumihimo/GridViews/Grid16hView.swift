//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16hView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16hShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16hShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16hShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16hShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16hShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16hShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16hShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16hShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16hShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16hShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16hShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16hShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16hShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16hShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16hShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16hShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16hLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16hView()
		.environmentObject(BraidStorage())
}
