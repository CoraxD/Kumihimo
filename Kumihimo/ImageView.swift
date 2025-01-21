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
			switch braidStorage.curBraid.name {
			case "Braid 4A":
				Image("Image-4a")
					.resizable()
					.scaledToFit()
			case "Braid 8A":
				Image("Image-8a")
					.resizable()
					.scaledToFit()
			case "Braid 8B":
				Image("Image-8b")
					.resizable()
					.scaledToFit()
			case "Braid 8C":
				Image("Image-8c")
					.resizable()
					.scaledToFit()
			case "Braid 8D":
				Image("Image-8d")
					.resizable()
					.scaledToFit()
			case "Braid 8E":
				Image("Image-8e")
					.resizable()
					.scaledToFit()
			case "Braid 8F":
				Image("Image-8f")
					.resizable()
					.scaledToFit()
			case "Braid 8G":
				Image("Image-8g")
					.resizable()
					.scaledToFit()
			case "Braid 8H":
				Image("Image-8h")
					.resizable()
					.scaledToFit()
			case "Braid 8J":
				Image("Image-8j")
					.resizable()
					.scaledToFit()
			case "Braid 8K":
				Image("Image-8k")
					.resizable()
					.scaledToFit()
			case "Braid 8L":
				Image("Image-8l")
					.resizable()
					.scaledToFit()
			case "Braid 8M":
				Image("Image-8m")
					.resizable()
					.scaledToFit()
			case "Braid 8N":
				Image("Image-8n")
					.resizable()
					.scaledToFit()
			case "Braid 16A":
				Image("Image-16a")
					.resizable()
					.scaledToFit()
			case "Braid 16B":
				Image("Image-16b")
					.resizable()
					.scaledToFit()
			case "Braid 16C":
				Image("Image-16c")
					.resizable()
					.scaledToFit()
			case "Braid 16D":
				Image("Image-16d")
					.resizable()
					.scaledToFit()
			case "Braid 16E":
				Image("Image-16e")
					.resizable()
					.scaledToFit()
			case "Braid 16F":
				Image("Image-16f")
					.resizable()
					.scaledToFit()
			case "Braid 16G":
				Image("Image-16g")
					.resizable()
					.scaledToFit()
			case "Braid 16H":
				Image("Image-16h")
					.resizable()
					.scaledToFit()
			case "Braid 16J":
				Image("Image-16j")
					.resizable()
					.scaledToFit()
			case "Braid 16K":
				Image("Image-16k")
					.resizable()
					.scaledToFit()
			case "Braid 16L":
				Image("Image-16l")
					.resizable()
					.scaledToFit()
			case "Braid 16M":
				Image("Image-16m")
					.resizable()
					.scaledToFit()
			case "Braid 16N":
				Image("Image-16n")
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
