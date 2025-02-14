//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct GridView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	
	var body: some View {
		VStack {
			ZStack {
				switch braidStorage.curBraid.name {
				case "Braid 4A":
					Grid4aView()
				case "Braid 8A":
					Grid8aView()
				case "Braid 8B":
					Grid8bView()
				case "Braid 8C":
					Grid8cView()
				case "Braid 8D":
					Grid8dView()
				case "Braid 8E":
					Grid8eView()
				case "Braid 8F":
					Grid8fView()
				case "Braid 8G":
					Grid8gView()
				case "Braid 8H":
					Grid8hView()
				case "Braid 8J":
					Grid8jView()
				case "Braid 8K":
					Grid8kView()
				case "Braid 8L":
					Grid8lView()
				case "Braid 8M":
					Grid8mView()
				case "Braid 8N":
					Grid8nView()
				case "Braid 16A":
					Grid16aView()
				case "Braid 16B":
					Grid16bView()
				case "Braid 16C":
					Grid16cView()
				case "Braid 16D":
					Grid16dView()
				case "Braid 16E":
					Grid16eView()
				case "Braid 16F":
					Grid16fView()
				case "Braid 16G":
					Grid16gView()
				case "Braid 16H":
					Grid16hView()
				case "Braid 16J":
					Grid16jView()
				case "Braid 16K":
					Grid16kView()
				case "Braid 16L":
					Grid16lView()
				case "Braid 16M":
					Grid16mView()
				case "Braid 16N":
					Grid16nView()
				case "Braid 16P":
					Grid16pView()
				case "Braid 16Q":
					Grid16qView()
				case "Braid 16R":
					Grid16rView()
				case "Braid 16S":
					Grid16sView()
				case "Braid 16T":
					Grid16tView()
				case "Braid 16U":
					Grid16uView()
				case "Braid 16V":
					Grid16vView()
				case "Braid 16Y":
					Grid16yView()
				case "Braid 16Z":
					Grid16zView()
				case "Braid 16AA":
					Grid16aaView()
				case "Braid 16AB":
					Grid16abView()
				case "Braid 16AC":
					Grid16acView()
				case "Braid 16AD":
					Grid16adView()
				default:
					Grid4aView()
				}
			}
		}
	}
}

#Preview {
	GridView()
		.environmentObject(BraidStorage())
}
