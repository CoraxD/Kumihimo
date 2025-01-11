//
//  CustomColorPicker.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import SwiftUI

struct CustomColorPicker: NSViewRepresentable {
	@Binding var selectedColor: Color
	
	func makeNSView(context: Context) -> NSColorWell {
		let colorWell = NSColorWell()
		colorWell.target = context.coordinator
		colorWell.action = #selector(Coordinator.colorChanged(_:))
		return colorWell
	}
	
	func updateNSView(_ nsView: NSColorWell, context: Context) {
		DispatchQueue.main.async {
			nsView.color = NSColor(selectedColor)
		}
	}
	
	func makeCoordinator() -> Coordinator {
		Coordinator(self)
	}
	
	class Coordinator: NSObject {
		let parent: CustomColorPicker
		
		init(_ parent: CustomColorPicker) {
			self.parent = parent
		}
		
		@objc func colorChanged(_ sender: NSColorWell) {
			parent.selectedColor = Color(sender.color)
		}
	}
}

#Preview {
	CustomColorPicker(selectedColor: .constant(.blue))
}
