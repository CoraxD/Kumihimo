//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16wView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16wShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16wShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16wShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16wShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16wShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16wShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16wShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16wShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16wShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16wShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16wShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16wShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16wShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16wShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16wShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16wShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16wLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16wView()
		.environmentObject(BraidStorage())
}
