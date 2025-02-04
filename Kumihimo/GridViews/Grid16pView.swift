//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16pView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16pShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16pShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16pShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16pShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16pShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16pShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16pShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16pShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16pShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16pShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16pShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16pShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16pShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16pShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16pShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16pShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16pView()
		.environmentObject(BraidStorage())
}
