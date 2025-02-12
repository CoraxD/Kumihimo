//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16vView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16vShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16vShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16vShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16vShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16vShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16vShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16vShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16vShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16vShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16vShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16vShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16vShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16vShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16vShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16vShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16vShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16vLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16vView()
		.environmentObject(BraidStorage())
}
