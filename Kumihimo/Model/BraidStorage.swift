//
//  BradeStorage.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import Foundation
import SwiftUI

class BraidStorage: ObservableObject {
	@Published var braids: [Braid] = [Braid()]
	@Published var colors: [Int: Color] = [1:.green]
	@Published var activeThread: Set<Int> = []
	@Published var curBraid: Braid = Braid() {
		didSet {
			activeThread = []
			if colors.count != curBraid.threadCount {
				switch curBraid.threadCount {
				case 4:
					colors = [1:.gray, 2: .white, 3: .gray, 4: .white]
				case 8:
					colors = [1:.gray, 2: .white, 3: .gray, 4: .white, 5:.gray, 6: .white, 7: .gray, 8: .white]
				case 16:
					colors = [1:.gray, 2: .white, 3: .gray, 4: .white, 5:.gray, 6: .white, 7: .gray, 8: .white,
										9:.gray, 10: .white, 11: .gray, 12: .white, 13:.gray, 14: .white, 15: .gray, 16: .white]
				default:
					colors = [1:.gray, 2: .white, 3: .gray, 4: .white]
				}
			}
		}
	}
	
	func loadBraids(){
		
		var resultBraids: [Braid] = []
		
		if let infoPlistPath = Bundle.main.url(forResource: "Braids", withExtension: "plist") {
			do {
				let infoPlistData = try Data(contentsOf: infoPlistPath)
				let newArray = try PropertyListDecoder().decode([Braid].self, from: infoPlistData)
				resultBraids = newArray
			} catch {
				print(error)
			}
		}
		
		if !resultBraids.isEmpty {
			self.braids = resultBraids
			curBraid = braids[0]
		}
	}
	func saveBraids() {
		
		let encoder = PropertyListEncoder()
		do {
			let data = try encoder.encode(braids)
			try data.write(to: dataFilePath(), options: Data.WritingOptions.atomic)
		} catch {
			print("Error encoding item array: \(error.localizedDescription)")
		}
	}
	
	func dataFilePath() -> URL {
		let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
		return path[0].appendingPathComponent("Braids.plist")
	}
}
