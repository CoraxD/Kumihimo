//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8bView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8bShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8bShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8bShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8bShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8bShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8bShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8bShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8bShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
			}
			.frame(width: 200, height: 350)
    }
}

#Preview {
    Grid8bView()
		.environmentObject(BraidStorage())
}
