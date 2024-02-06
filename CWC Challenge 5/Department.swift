//
//  Department.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import Foundation

struct Department: Identifiable, Decodable {
        
        let id: UUID = UUID()
        var department_name: String
        var employees: [Employee]
}
