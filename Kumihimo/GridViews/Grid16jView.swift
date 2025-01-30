//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16jView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16jShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16jShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16jShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16jShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16jShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16jShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16jShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16jShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16jShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16jShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16jShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16jShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16jShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16jShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16jShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16jShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16jLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16jView()
		.environmentObject(BraidStorage())
}
