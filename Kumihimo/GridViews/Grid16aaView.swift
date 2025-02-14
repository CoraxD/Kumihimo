//
//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16aaView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16aaShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16aaShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16aaShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16aaShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16aaShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16aaShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16aaShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16aaShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16aaShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16aaShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16aaShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16aaShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16aaShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16aaShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16aaShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16aaShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16aaLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16aaView()
		.environmentObject(BraidStorage())
}
