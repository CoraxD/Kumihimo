//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16tView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16tShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16tShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16tShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16tShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16tShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16tShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16tShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16tShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16tShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16tShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16tShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16tShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16tShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16tShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16tShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16tShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16tView()
		.environmentObject(BraidStorage())
}
