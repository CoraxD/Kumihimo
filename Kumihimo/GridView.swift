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
