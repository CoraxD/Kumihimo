//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct BraidView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	
	var body: some View {
		ZStack {
			switch braidStorage.curBraid.name {
			case "Braid 4A":
				Image("Braid-4a")
					.resizable()
					.scaledToFit()
			case "Braid 8A":
				Image("Braid-8a")
					.resizable()
					.scaledToFit()
			case "Braid 8B":
				Image("Braid-8b")
					.resizable()
					.scaledToFit()
			case "Braid 8C":
				Image("Braid-8c")
					.resizable()
					.scaledToFit()
			case "Braid 8D":
				Image("Braid-8d")
					.resizable()
					.scaledToFit()
			case "Braid 8E":
				Image("Braid-8e")
					.resizable()
					.scaledToFit()
			case "Braid 8F":
				Image("Braid-8f")
					.resizable()
					.scaledToFit()
			case "Braid 8G":
				Image("Braid-8g")
					.resizable()
					.scaledToFit()
			case "Braid 8H":
				Image("Braid-8h")
					.resizable()
					.scaledToFit()
			case "Braid 8J":
				Image("Braid-8j")
					.resizable()
					.scaledToFit()
			case "Braid 8K":
				Image("Braid-8k")
					.resizable()
					.scaledToFit()
			case "Braid 8L":
				Image("Braid-8l")
					.resizable()
					.scaledToFit()
			case "Braid 8M":
				Image("Braid-8m")
					.resizable()
					.scaledToFit()
			case "Braid 8N":
				Image("Braid-8n")
					.resizable()
					.scaledToFit()
			case "Braid 16A":
				Image("Braid-16a")
					.resizable()
					.scaledToFit()
			case "Braid 16B":
				Image("Braid-16b")
					.resizable()
					.scaledToFit()
			case "Braid 16C":
				Image("Braid-16c")
					.resizable()
					.scaledToFit()
			case "Braid 16D":
				Image("Braid-16d")
					.resizable()
					.scaledToFit()
			case "Braid 16E":
				Image("Braid-16e")
					.resizable()
					.scaledToFit()
			case "Braid 16F":
				Image("Braid-16f")
					.resizable()
					.scaledToFit()
			case "Braid 16G":
				Image("Braid-16g")
					.resizable()
					.scaledToFit()
			case "Braid 16H":
				Image("Braid-16h")
					.resizable()
					.scaledToFit()
			case "Braid 16J":
				Image("Braid-16j")
					.resizable()
					.scaledToFit()
			case "Braid 16K":
				Image("Braid-16k")
					.resizable()
					.scaledToFit()
			case "Braid 16L":
				Image("Braid-16l")
					.resizable()
					.scaledToFit()
			case "Braid 16M":
				Image("Braid-16m")
					.resizable()
					.scaledToFit()
			case "Braid 16N":
				Image("Braid-16n")
					.resizable()
					.scaledToFit()
			case "Braid 16P":
				Image("Braid-16p")
					.resizable()
					.scaledToFit()
			case "Braid 16Q":
				Image("Braid-16q")
					.resizable()
					.scaledToFit()
			case "Braid 16R":
				Image("Braid-16r")
					.resizable()
					.scaledToFit()
			case "Braid 16S":
				Image("Braid-16s")
					.resizable()
					.scaledToFit()
			case "Braid 16T":
				Image("Braid-16t")
					.resizable()
					.scaledToFit()
			case "Braid 16U":
				Image("Braid-16u")
					.resizable()
					.scaledToFit()
			case "Braid 16V":
				Image("Braid-16v")
					.resizable()
					.scaledToFit()
			case "Braid 16Y":
				Image("Braid-16y")
					.resizable()
					.scaledToFit()
			case "Braid 16Z":
				Image("Braid-16z")
					.resizable()
					.scaledToFit()
			case "Braid 16AA":
				Image("Braid-16aa")
					.resizable()
					.scaledToFit()
			case "Braid 16AB":
				Image("Braid-16ab")
					.resizable()
					.scaledToFit()
			case "Braid 16AC":
				Image("Braid-16ac")
					.resizable()
					.scaledToFit()
			case "Braid 16AD":
				Image("Braid-16ad")
					.resizable()
					.scaledToFit()
			default:
				Image("Braid-4a")
					.resizable()
					.scaledToFit()
			}
		}
		.clipShape(Circle())
	}
}

#Preview {
	BraidView()
		.environmentObject(BraidStorage())
}
