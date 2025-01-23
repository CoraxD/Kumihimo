//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16gView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16gShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16gShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16gShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16gShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16gShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16gShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16gShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16gShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16gShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16gShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16gShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16gShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16gShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16gShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16gShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16gShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16gLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16gView()
		.environmentObject(BraidStorage())
}
