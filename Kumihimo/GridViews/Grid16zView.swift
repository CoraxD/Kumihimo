//
//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16zView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16zShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16zShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16zShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16zShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16zShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16zShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16zShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16zShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16zShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16zShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16zShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16zShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16zShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16zShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16zShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16zShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16zLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16zView()
		.environmentObject(BraidStorage())
}
