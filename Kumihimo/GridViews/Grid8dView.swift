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
					.stroke(.gray, lineWidth: 3)
			}
			.frame(width: 300, height: 250)
    }
}

#Preview {
    Grid8dView()
		.environmentObject(BraidStorage())
}
