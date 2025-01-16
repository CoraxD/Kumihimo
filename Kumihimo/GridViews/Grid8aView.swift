//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8aView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8aShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8aShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8aShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8aShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8aShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8aShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8aShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8aShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
			}
			.padding(30)
    }
}

#Preview {
    Grid8aView()
		.environmentObject(BraidStorage())
}
