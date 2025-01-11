//
//  BradeStorage.swift
//  Kumihimo
//
//  Created by Дмитрий on 11.01.2025.
//

import Foundation
import SwiftUI

class BraidStorage {
	var braids: [Braid] = [Braid()]
	var curBraid: Braid = Braid()
	func loadBraids() async {
		
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
		self.braids = resultBraids
		if !braids.isEmpty {
			curBraid = braids[0]
		} else {
			braids.append(curBraid)
			saveBraids()
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
