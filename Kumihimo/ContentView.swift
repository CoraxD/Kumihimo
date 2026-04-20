//
//  ContentView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

enum ViewType {
	case gridView
	case schemeView
	case textView
}

struct ContentView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	@State var viewType: ViewType = .gridView
	var image: Image = Image(systemName: "rectangle.pattern.checkered")
	var body: some View {
		NavigationSplitView {
			VStack {
				HStack(alignment: .center) {
					Text(braidStorage.curBraid.name)
						.font(.title)
						.frame(minWidth: 100)
					Spacer()
					ProfileView(profile: braidStorage.curBraid.profile)
				}
				.frame(minHeight: 40)
				ImageView()
					.frame(width: 150, height: 70)
				StartingPositionView()
				Picker("", selection: $braidStorage.curBraid) {
					ForEach(braidStorage.braids, id: \.self) {brade in
						HStack {
							Image(nsImage: ImageRenderer(content: ProfileView(profile: brade.profile).scaleEffect(0.3).frame(width: 20, height: 20)).nsImage ?? NSImage(imageLiteralResourceName: "rectangle"))
							Text(brade.name).tag(brade.name)
						}
					}
				}
			}
			.padding()
			.frame(minWidth: 280, maxWidth: 350)
		} detail: {
			VStack {
				switch viewType {
				case .gridView: GridView()
				case .schemeView: SchemeView()
				case .textView: TextView()
				}
				Spacer()
				HStack {
					Button("Grid", systemImage: "rectangle.pattern.checkered")
					{
						viewType = .gridView
					}
					.disabled(viewType == .gridView)
					Spacer()
					Button("Description", systemImage: "text.alignleft")
					{
						viewType = .textView
					}
					.disabled(viewType == .textView)
					Spacer()
					Button("Scheme", systemImage: "timelapse")
					{
						viewType = .schemeView
					}
					.disabled(viewType == .schemeView)
				}
				.padding(.top)
				.buttonStyle(.plain)
			}
			.padding()
		}
		.frame(minWidth: 640, minHeight: 450)
		.onAppear {
			braidStorage.loadBraids()
		}
	}
}

#Preview {
	ContentView()
		.environmentObject(BraidStorage())
}
