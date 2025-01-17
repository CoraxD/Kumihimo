//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8mView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8mShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8mShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8mShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8mShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8mShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8mShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8mShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8mShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8mLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid8mView()
		.environmentObject(BraidStorage())
}
