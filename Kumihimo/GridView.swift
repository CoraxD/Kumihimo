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
				case "Braid 16L":
					Grid16lView()
				case "Braid 16N":
					Grid16nView()
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
