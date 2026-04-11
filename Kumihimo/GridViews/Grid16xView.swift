//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16xView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16xShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16xShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16xShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16xShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16xShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16xShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16xShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16xShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16xShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16xShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16xShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16xShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16xShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16xShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16xShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16xShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16xLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16xView()
		.environmentObject(BraidStorage())
}
