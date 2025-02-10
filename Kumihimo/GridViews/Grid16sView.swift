//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16sView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16sShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16sShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16sShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16sShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16sShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16sShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16sShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16sShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16sShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16sShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16sShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16sShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16sShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16sShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16sShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16sShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16sLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16sView()
		.environmentObject(BraidStorage())
}
