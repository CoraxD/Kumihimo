//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16cView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16cShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16cShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16cShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16cShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16cShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16cShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16cShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16cShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16cShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16cShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16cShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16cShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16cShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16cShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16cShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16cShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16cView()
		.environmentObject(BraidStorage())
}
