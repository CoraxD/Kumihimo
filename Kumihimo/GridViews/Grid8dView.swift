//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8dView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8dShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8dShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8dShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8dShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8dShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8dShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8dShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8dShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8dLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
			.padding(20)
    }
}

#Preview {
    Grid8dView()
		.environmentObject(BraidStorage())
}
