//
//  Worker.swift
//  Algo
//
//  Created by Serhii Kyrylenko on 24.02.2025.
//

import Foundation

let sortedNames: [String] = [
    "####123456",
    "1####4554544",
    "#245454454###",
    "#3434#5454#2424#",
    "5424242####34545"
]

let placeholderCharacter: Character = "#"

enum AlgoError: Error {
    case wrongInput
}

///  Recursively generate numbers returning each generated number via callback.
///  - Parameter name: `String` value representing masked name.
///  - Parameter callback: callback with  generated value for each pass.
func generateNumbers(from name: String, _ callback: (Int64) -> Void) throws {
    if let placeholderIndex = Array(name).firstIndex(of: placeholderCharacter) {
        var resultStrings: [String] = []
        let startNumber = placeholderIndex == 0 ? 1 : 0
        for i in startNumber...9 {
            let newString = name.replacing([placeholderCharacter], with: "\(i)", maxReplacements: 1)
            resultStrings.append(newString)
        }
        try resultStrings.forEach {
            try generateNumbers(from: $0, callback)
        }
    } else {
        if !name.contains(placeholderCharacter) {
            if let number = Int64(name) {
                callback(number)
            } else {
                throw AlgoError.wrongInput
            }
        } else {
            return try generateNumbers(from: name, callback)
        }
    }
}

/// Example of using `generateNumbersWithoutReturn` by adding each value to external storage
func doWork() {
    let externalStorage = ExternalStorage()
    _ = sortedNames
        .compactMap {
            try? generateNumbers(from: $0) {
                // adding by 1 value to the external storage
                externalStorage.append($0)
            }
        }
    print("Done")
}
