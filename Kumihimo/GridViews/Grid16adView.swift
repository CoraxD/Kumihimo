//
//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16adView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16adShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16adShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16adShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16adShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16adShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16adShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16adShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16adShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16adShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16adShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16adShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16adShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16adShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16adShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16adShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16adShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16adLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16adView()
		.environmentObject(BraidStorage())
}
