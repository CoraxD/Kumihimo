//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid8gView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid8gShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid8gShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid8gShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid8gShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid8gShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid8gShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid8gShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid8gShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid8gLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
			.frame(width: 300, height: 310)
    }
}

#Preview {
    Grid8gView()
		.environmentObject(BraidStorage())
}
