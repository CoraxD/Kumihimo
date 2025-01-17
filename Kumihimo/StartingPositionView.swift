//
//  StartingPositionView.swift
//  Kumihimo
//
//  Created by Дмитрий on 10.01.2025.
//

import SwiftUI

struct StartingPositionView: View {
	@EnvironmentObject var braidStorage: BraidStorage
	
	@State var startingPosition: StartingPosition = .octo8
	@State var color: Color = .white
	@State var activeColor: Color = .white
	
	@StateObject var helper: MainViewHelper = MainViewHelper()
	
	
    var body: some View {
			GeometryReader { geometry in
				ZStack() {
					Circle()
						.offset()
						.fill(Color(white: 0.8))
						.stroke(.black, lineWidth: 1.5)
						.padding(35)
						.onTapGesture {
							braidStorage.activeThread = []
						}
					ForEach(braidStorage.curBraid.startingPosition.positionArray(), id: \.self.number) {thread in
						let radius = min(geometry.size.width, geometry.size.height) / 2 - 30
						ThreadView(number: thread.number,
											 colors: $braidStorage.colors,
											 activeThread: $braidStorage.activeThread)
							.offset(x: thread.position.x * radius,
											y: thread.position.y * radius)
							.onTapGesture {
								if !NSColorPanel.shared.isVisible {
									NSColorPanel.shared.makeKeyAndOrderFront(nil)
								}
								if NSEvent.modifierFlags.contains(.shift) || NSEvent.modifierFlags.contains(.option) {
									if braidStorage.activeThread.contains(thread.number) {
										braidStorage.activeThread.remove(thread.number)
									} else {
										braidStorage.activeThread.insert(thread.number)
									}
								} else {
									braidStorage.activeThread.removeAll()
									braidStorage.activeThread.insert(thread.number)
									NSColorPanel.shared.color = NSColor( braidStorage.colors[thread.number] ?? .white)
								}
							}
							.onAppear {
								NSColorPanel.shared.makeKeyAndOrderFront(nil)
								NSColorPanel.shared.setTarget(self.helper)
								NSColorPanel.shared.setAction(#selector(self.helper.setColor))
							}
							.onChange(of: helper.color) { oldValue, newValue in
								for index in braidStorage.activeThread {
									braidStorage.colors[index] = helper.color
								}
							}
					}
					
				}
				.padding()
			}
    }
}
class MainViewHelper: ObservableObject {
	@Published var color: Color = .white
	
	@objc func setColor(colorPanel: NSColorPanel) {
					color = Color(colorPanel.color)
	}
}

#Preview {
	StartingPositionView()
		.environmentObject(BraidStorage())
}
