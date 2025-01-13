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
				switch braidStorage.curBraid.grid {
				case .grid4a:
					Grid4aView()
				case .grid8a:
					Grid8aView()
				case .grid8c:
					Grid8cView()
				case .grid8d:
					Grid8dView()
				case .grid8e:
					Grid8eView()
				case .grid8f:
					Grid8fView()
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
