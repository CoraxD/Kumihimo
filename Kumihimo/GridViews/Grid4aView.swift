//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid4aView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid4aShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid4aShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid4aShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid4aShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
			}
			.padding(30)
    }
}

#Preview {
    Grid4aView()
		.environmentObject(BraidStorage())
}
