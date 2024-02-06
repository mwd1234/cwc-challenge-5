//
//  EmployeeRowView.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import SwiftUI

struct EmployeeRowView: View {
    var employee: Employee
    
    var body: some View {
        HStack {
            Text(employee.name)
            Text(employee.position)
            Spacer()
            VStack {
                
                    // Create URL Instance based on URL Scheme
                    if let emailUrl = URL(string: "mailto:\(employee.email)") {
                        // Test if URL can be opened
                        if UIApplication.shared.canOpenURL(emailUrl) {
                            Button {
                                UIApplication.shared.open(emailUrl)
                            } label: {
                                Image(systemName: "envelope.circle")
                            }
                            .padding()
                        }
                    }
                    
//                    Button {
//                        print()
//                    } label: {
//                        Image(systemName: "envelope.circle")
//                    }
                    
                    
                    
                    // Create URL Instance based on URL Scheme
                    if let phoneUrl = URL(string: "tel://\(employee.phone)") {
                        // Test if URL can be opened
                        if UIApplication.shared.canOpenURL(phoneUrl) {
                            Button {
                                UIApplication.shared.open(phoneUrl)
                            } label: {
                                Image(systemName: "phone.circle")
                            }
                        }
                }
//                    Button {
//                        print()
//                    } label: {
//                        Image(systemName: "phone.circle")
//                    }
            }

        }.padding()
    }
}

#Preview {
    EmployeeRowView(employee: Employee(name: "John Smith", position: "HR Manager", email: "john.smith@abccorp.com", phone: "+1 (123) 456-7890"))
}
