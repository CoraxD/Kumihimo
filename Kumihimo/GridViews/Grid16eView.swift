//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16eView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16eShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16eShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16eShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16eShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16eShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16eShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16eShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16eShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16eShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16eShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16eShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16eShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16eShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16eShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16eShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16eShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
			}
    }
}

#Preview {
    Grid16eView()
		.environmentObject(BraidStorage())
}
