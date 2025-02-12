//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16uView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16uShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16uShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16uShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16uShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16uShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16uShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16uShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16uShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16uShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16uShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16uShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16uShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16uShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16uShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16uShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16uShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16uLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16uView()
		.environmentObject(BraidStorage())
}
