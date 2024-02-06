//
//  ContentView.swift
//  CWC Challenge 5
//
//  Created by Matthew Dembinski on 2/5/24.
//

import SwiftUI

struct CompanyView: View {
    @State var companies = [Company]()
    var dataService = DataServce()
    
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false) {
                VStack {
                    ForEach(companies) { company in
                        NavigationLink {
                            DepartmentView(departments: company.departments)
                        } label: {
                            Text(company.company_name)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            .onAppear {
                companies = dataService.getFileData()
            }
        }
        
    }
    
}

#Preview {
    CompanyView()
}
