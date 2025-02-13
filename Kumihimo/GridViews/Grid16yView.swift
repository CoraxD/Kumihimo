//
//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16yView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16yShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16yShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16yShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16yShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16yShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16yShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16yShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16yShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16yShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16yShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16yShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16yShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16yShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16yShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16yShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16yShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16yLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16yView()
		.environmentObject(BraidStorage())
}
