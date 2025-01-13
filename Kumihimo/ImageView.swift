//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct ImageView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	
	var body: some View {
		ZStack {
			switch braidStorage.curBraid.grid {
			case .grid4a:
				Image("Image-4a")
					.resizable()
					.scaledToFit()
			case .grid8a:
				Image("Image-8a")
					.resizable()
					.scaledToFit()
			case .grid8c:
				Image("Image-8c")
					.resizable()
					.scaledToFit()
			case .grid8d:
				Image("Image-8d")
					.resizable()
					.scaledToFit()
			case .grid8e:
				Image("Image-8e")
					.resizable()
					.scaledToFit()
			case .grid8f:
				Image("Image-8f")
					.resizable()
					.scaledToFit()
			default:
				Image("Image-4a")
					.resizable()
					.scaledToFit()
			}
		}
	}
}

#Preview {
	ImageView()
		.environmentObject(BraidStorage())
}
