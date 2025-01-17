//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16aView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16aShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16aShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16aShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16aShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16aShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16aShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16aShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16aShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16aShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16aShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16aShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16aShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16aShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16aShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16aShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16aShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16aView()
		.environmentObject(BraidStorage())
}
