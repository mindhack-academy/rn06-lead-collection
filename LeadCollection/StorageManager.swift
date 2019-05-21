//
//  StorageManager.swift
//  LeadCollection
//
//  Created by Rares on 21/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation


class StorageManager {
    static let shared = StorageManager()
    private init() {}
    
    private var collectedData: [FormData] = []
    
    func addData(formData: FormData) {
        self.collectedData.append(formData)
    }
    
    func getData() -> [FormData] {
        
        return collectedData
    }
    
    func saveDataLocally() {
        
    }
    
    func getDataFromLocalStorage() {
        
    }
    
}

