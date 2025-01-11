//
//  ContentView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct ContentView: View {
	@State var braidStorage = BraidStorage()
	@State var colors: [Int: Color] = [1: .red, 2: .blue]
	var body: some View {
		VStack {
			HStack {
				Text(braidStorage.curBraid.name)
					.font(.title)
				Picker("Select Braide", selection: Binding(get: {
					braidStorage.curBraid.name
				}, set: { value in
					braidStorage.curBraid = braidStorage.braids.first(where: {$0.name == value})  ?? braidStorage.braids[0]
				})) {
					ForEach(braidStorage.braids) {brade in
						Text(brade.name)
					}
				}
			}
			HStack {
				StartingPositionView(colors: $colors,
														 braid: braidStorage.curBraid)
				GridView(colors: $colors,
								 braid: braidStorage.curBraid)
			}
		}
		.task {
				await braidStorage.loadBraids()
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
