//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8fView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8fShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8fShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8fShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8fShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8fShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8fShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8fShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8fShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
			}
			.padding(20)
    }
}

#Preview {
    Grid8fView()
		.environmentObject(BraidStorage())
}
