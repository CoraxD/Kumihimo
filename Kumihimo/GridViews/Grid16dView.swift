//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Grid16dView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Grid16dShape1()
					.fill(braidStorage.colors[1] ?? .white)
					.stroke(.black)
				Grid16dShape2()
					.fill(braidStorage.colors[2] ?? .white)
					.stroke(.black)
				Grid16dShape3()
					.fill(braidStorage.colors[3] ?? .white)
					.stroke(.black)
				Grid16dShape4()
					.fill(braidStorage.colors[4] ?? .white)
					.stroke(.black)
				Grid16dShape5()
					.fill(braidStorage.colors[5] ?? .white)
					.stroke(.black)
				Grid16dShape6()
					.fill(braidStorage.colors[6] ?? .white)
					.stroke(.black)
				Grid16dShape7()
					.fill(braidStorage.colors[7] ?? .white)
					.stroke(.black)
				Grid16dShape8()
					.fill(braidStorage.colors[8] ?? .white)
					.stroke(.black)
				Grid16dShape9()
					.fill(braidStorage.colors[9] ?? .white)
					.stroke(.black)
				Grid16dShape10()
					.fill(braidStorage.colors[10] ?? .white)
					.stroke(.black)
				Grid16dShape11()
					.fill(braidStorage.colors[11] ?? .white)
					.stroke(.black)
				Grid16dShape12()
					.fill(braidStorage.colors[12] ?? .white)
					.stroke(.black)
				Grid16dShape13()
					.fill(braidStorage.colors[13] ?? .white)
					.stroke(.black)
				Grid16dShape14()
					.fill(braidStorage.colors[14] ?? .white)
					.stroke(.black)
				Grid16dShape15()
					.fill(braidStorage.colors[15] ?? .white)
					.stroke(.black)
				Grid16dShape16()
					.fill(braidStorage.colors[16] ?? .white)
					.stroke(.black)
				Grid16dLine()
					.stroke(.gray, style: StrokeStyle( lineWidth: 3, dash: [6]))
					.stroke(.white, style: StrokeStyle( lineWidth: 3, dash: [6], dashPhase: 6))
			}
    }
}

#Preview {
    Grid16dView()
		.environmentObject(BraidStorage())
}
