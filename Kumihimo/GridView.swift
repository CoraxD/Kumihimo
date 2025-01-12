//
//  GridView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct GridView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	@State var gridType: GridType = .grid8f
	
	var body: some View {
		ZStack {
			switch braidStorage.curBraid.grid {
			case .grid4a:
				Grid8fView()
			case .grid8a:
				Grid8aView()
			case .grid8f:
				Grid8fView()
			}
		}
	}
}

#Preview {
	GridView()
		.environmentObject(BraidStorage())
}
