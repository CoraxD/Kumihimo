//
//  ContentView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	@State var showGrid: Bool = true
	var body: some View {
		NavigationSplitView {
			VStack {
				HStack(alignment: .center) {
					Text(braidStorage.curBraid.name)
						.font(.title)
						.frame(minWidth: 100)
					Spacer()
					ProfileView()
				}
				.frame(minHeight: 40)
				ImageView()
					.frame(width: 150, height: 70)
				StartingPositionView()
				Picker("", selection: $braidStorage.curBraid) {
					ForEach(braidStorage.braids, id: \.self) {brade in
						Text(brade.name).tag(brade.name)
					}
				}
			}
			.padding()
			.frame(minWidth: 280, maxWidth: 350)
		} detail: {
			VStack {
				Spacer()
				if showGrid {
					GridView()
				} else {
					SchemaView()
				}
				Spacer()
				HStack {
					Button("Show Grid", systemImage: "rectangle.pattern.checkered")
					{
						showGrid = true
					}
					.disabled(showGrid)
					Spacer()
					Button("Show Schema", systemImage: "timelapse")
					{
						showGrid = false
					}
					.disabled(!showGrid)
				}
				.padding(.top)
				.buttonStyle(.plain)
			}
			.padding()
		}
		.frame(minWidth: 600, minHeight: 550)
		.onAppear {
			braidStorage.loadBraids()
		}
	}
}

#Preview {
	ContentView()
		.environmentObject(BraidStorage())
}
