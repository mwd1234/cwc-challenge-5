//
//  DataService.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import Foundation

struct DataServce {
    
    func getFileData() -> [Company] {
        
        // Get file path to DemoData.json
        if let url = Bundle.main.url(forResource: "DemoData", withExtension: "json") {
            // Read the file and turn it into Data
            do {
                let data = try Data(contentsOf: url)
                
                // Parse (De-Serialize) data into Swift instances
                let decoder = JSONDecoder()
                
                do {
                    let companies = try decoder.decode([Company].self, from: data)
                    return companies
                }
                catch {
                    print("Couldn't parse the JSON: \(error)")
                }
                
            }
            catch {
                print("Couldn't read the file: \(error)")
            }

            
            
            
        }
        
        
        return [Company]()
        
    }
}
