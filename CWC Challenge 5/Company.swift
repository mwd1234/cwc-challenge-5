//
//  Company.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import Foundation

struct Company: Identifiable, Decodable {
        
        let id: UUID = UUID()
        var company_name: String
        var departments: [Department]
}
