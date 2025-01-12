//
//  ContentView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	var body: some View {
		VStack {
			HStack {
				Text(braidStorage.curBraid.name)
					.font(.title)
				Picker("Select Braide", selection: $braidStorage.curBraid) {
					ForEach(braidStorage.braids, id: \.self) {brade in
						Text(brade.name).tag(brade.name)
					}
				}
			}
			HStack {
				StartingPositionView()
				GridView()
			}
		}
		.padding()
		.onAppear {
			braidStorage.loadBraids()
		}
	}
}

#Preview {
	ContentView()
		.environmentObject(BraidStorage())
}
