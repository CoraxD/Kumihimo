//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16bView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16bShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16bShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16bShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16bShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16bShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16bShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16bShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16bShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16bShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16bShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16bShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16bShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16bShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16bShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16bShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16bShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16bView()
		.environmentObject(BraidStorage())
}
