//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8cView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8cShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8cShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8cShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8cShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8cShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8cShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8cShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8cShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8cWhite()
					.fill(.white)
					.stroke(.black, lineWidth: 0.8)
				Grid8cLine()
					.stroke(.gray, lineWidth: 3)
			}
			.frame(width: 140, height: 390)
    }
}

#Preview {
    Grid8cView()
		.environmentObject(BraidStorage())
}
