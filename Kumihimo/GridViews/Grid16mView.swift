//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16mView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16mShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16mShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16mShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16mShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16mShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16mShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16mShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16mShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16mShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16mShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16mShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16mShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16mShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16mShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16mShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16mShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16mLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16mView()
		.environmentObject(BraidStorage())
}
