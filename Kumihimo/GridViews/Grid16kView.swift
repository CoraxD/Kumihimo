//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16kView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16kShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16kShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16kShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16kShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16kShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16kShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16kShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16kShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16kShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16kShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16kShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16kShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16kShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16kShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16kShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16kShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16kLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16kView()
		.environmentObject(BraidStorage())
}
