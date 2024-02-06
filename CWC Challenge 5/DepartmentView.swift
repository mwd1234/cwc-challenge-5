//
//  DepartmentView.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import SwiftUI

struct DepartmentView: View {
    var departments: [Department]
    
    var body: some View {
        NavigationStack {
            
            ScrollView (showsIndicators: false) {
                VStack {
                    ForEach(departments) { department in
                        NavigationLink {
                            EmployeeView(employees: department.employees)
                        } label: {
                            Text(department.department_name)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
        }
    }
}

#Preview {
    DepartmentView(departments: [Department(department_name: "HR",
                                          employees: [Employee(name: "John Smith", position: "HR Manager", email: "john.smith@abccorp.com", phone: "+1 (123) 456-7890")]
                                        )])
}


//[
//  {
//    "name": "John Smith",
//    "position": "HR Manager",
//    "email": "john.smith@abccorp.com",
//    "phone": "+1 (123) 456-7890"
//  },
//  {
//    "name": "Emily Davis",
//    "position": "HR Specialist",
//    "email": "emily.davis@abccorp.com",
//    "phone": "+1 (234) 567-8901"
//  },
//  {
//    "name": "Michael Johnson",
//    "position": "HR Coordinator",
//    "email": "michael.johnson@abccorp.com",
//    "phone": "+1 (345) 678-9012"
//  },
//  {
//    "name": "Sarah Brown",
//    "position": "HR Assistant",
//    "email": "sarah.brown@abccorp.com",
//    "phone": "+1 (456) 789-0123"
//  }
//]
