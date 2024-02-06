//
//  EmployeeView.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import SwiftUI

struct EmployeeView: View {
    
    var employees: [Employee]
    
    var body: some View {
//        NavigationStack {
            List {
                ForEach(employees) { employee in
                    EmployeeRowView(employee: employee)
                }
            }
//        }
    }
}

#Preview {
    EmployeeView(employees: [Employee(name: "John Smith", position: "HR Manager", email: "john.smith@abccorp.com", phone: "+1 (123) 456-7890")])
}
