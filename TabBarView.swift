//
//  TabView.swift
//  techVerse
//
//  Created by Milena Soares on 19/10/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            HomeTi()
                .tabItem {
                    Label("teste", systemImage: "calendar")

                }
            AddMedication()
                .tabItem {
                    Label("List", systemImage: "list.triangle")
                }
            ContentiView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                    
                }
           
        }
    }
}

#Preview {
    TabBarView()
}
