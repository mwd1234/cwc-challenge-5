//
//  Employee.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import Foundation

struct Employee: Identifiable, Decodable {
        
        let id: UUID = UUID()
        var name: String
        var position: String
        var email: String
        var phone: String    
}
