//
//  GridEditView.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct Scheme4aView: View {
	@EnvironmentObject var braidStorage: BraidStorage
    var body: some View {
			ZStack {
				Scheme4aShape1()
					.fill(.white)
					.stroke(.black)
				Scheme4aShape2()
					.fill(.gray)
					.stroke(.black)
				Scheme4aShape3()
					.stroke(.black)
				Scheme4aShape4()
					.fill(.black)
				Text("1")
					.offset(x: -95, y: 4)
				Text("2")
					.offset(x: 95, y: 4)
				Text("R/H")
					.offset(x: -60, y: -65)
				Text("R/H")
					.offset(x: 20, y: 35)
				Text("L/H")
					.offset(x: -130, y: 80)
				Text("L/H")
					.offset(x: 165, y: -25)
			}
			.frame(width: 400, height: 300)
    }
}

#Preview {
    Scheme4aView()
		.environmentObject(BraidStorage())
}
