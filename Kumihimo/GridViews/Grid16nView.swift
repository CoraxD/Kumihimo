//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16nView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16nShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16nShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16nShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16nShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16nShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16nShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16nShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16nShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16nShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16nShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16nShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16nShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16nShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16nShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16nShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16nShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16nView()
		.environmentObject(BraidStorage())
}
