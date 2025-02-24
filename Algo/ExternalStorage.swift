//
//  ExternalStorage.swift
//  Algo
//
//  Created by Serhii Kyrylenko on 24.02.2025.
//

import Foundation

class ExternalStorage {
    private var storage: [Int64] = []
    
    func append(_ newElement: Int64) {
        storage.append(newElement)
        print("Added \(newElement)")
    }
}
