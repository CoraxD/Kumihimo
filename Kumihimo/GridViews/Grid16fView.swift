//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16fView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16fShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16fShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16fShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16fShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16fShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16fShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16fShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16fShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16fShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16fShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16fShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16fShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16fShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16fShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16fShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16fShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16fLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16fView()
		.environmentObject(BraidStorage())
}
