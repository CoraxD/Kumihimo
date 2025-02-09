//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16qView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16qShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16qShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16qShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16qShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16qShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16qShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16qShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16qShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16qShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16qShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16qShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16qShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16qShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16qShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16qShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16qShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16qLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16qView()
		.environmentObject(BraidStorage())
}
