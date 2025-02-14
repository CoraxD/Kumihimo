//
//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16acView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16acShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16acShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16acShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16acShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16acShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16acShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16acShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16acShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16acShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16acShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16acShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16acShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16acShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16acShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16acShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16acShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16acLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16acView()
		.environmentObject(BraidStorage())
}
