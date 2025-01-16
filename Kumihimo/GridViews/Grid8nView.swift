//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8nView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8nShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8nShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8nShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8nShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8nShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8nShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8nShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8nShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8nLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid8nView()
		.environmentObject(BraidStorage())
}
