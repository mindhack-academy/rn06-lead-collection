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
        
        let jsonData = try! JSONEncoder().encode(collectedData)
        let jsonString = String(data: jsonData, encoding:  .utf8)
        UserDefaults.standard.set(jsonString, forKey: "collectedData")
        
    }
    
    func getDataFromLocalStorage() {
        
        if let jsonString = UserDefaults.standard.string(forKey: "collectedData"),
            let jsonData = jsonString.data(using: .utf8),
            let decodedData = try? JSONDecoder().decode([FormData].self, from: jsonData) {
            
            collectedData = decodedData
        }
        
        
    }
    
    
}


