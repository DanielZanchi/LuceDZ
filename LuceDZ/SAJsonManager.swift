//
//  SAJsonManager.swift
//  LuceDZ
//
//  Created by Daniel Zanchi on 07/02/2020.
//  Copyright © 2020 Daniel Zanchi. All rights reserved.
//

import Foundation

class SAJsonManager {
    
    static let shared: SAJsonManager = SAJsonManager()
    
    var usersDecoded: [user]!
    
    func decode() -> [user]? {
        guard let url = URL(string: "https://raw.githubusercontent.com/DanielZanchi/LuceDZ/master/SalesAssistants.json") else {
            print("error with url")
            return nil
        }
        
        if let data = try? Data(contentsOf: url) {
            do {
                self.usersDecoded = [user]()
                let decoder = JSONDecoder()
                let result = try decoder.decode(SAs.self, from: data)
                for obj in result.sales_assistants {
                    usersDecoded.append(obj.sales_assistant)
                }
                return self.usersDecoded
            } catch {
                print(error)
            }
        }
        return nil
    }
    
    struct SAs: Codable {
        let sales_assistants: [SA]
    }
    
    struct SA: Codable {
        let sales_assistant: user
    }
    
    struct user: Codable {
        let name, surname, id: String
    }
    

    
}
