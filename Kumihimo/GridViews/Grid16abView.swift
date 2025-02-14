//
//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16abView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16abShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16abShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16abShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16abShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16abShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16abShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16abShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16abShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16abShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16abShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16abShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16abShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16abShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16abShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16abShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16abShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16abView()
		.environmentObject(BraidStorage())
}
