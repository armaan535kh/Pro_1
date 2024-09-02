//
//  ContentView.swift
//  Pro_1
//
//  Created by Armaan Khan  on 01/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
                List {
                    ForEach(0..<20) { _ in
                        episodeCell
                    }
                }
                .safeAreaInset(edge: .bottom) {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundStyle(.pink.gradient.opacity(0.8))
                        .frame(maxWidth: .infinity, maxHeight: 70)
                        .padding()
                }
                
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.pink.gradient.opacity(0.8))
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .padding()
            
            
            
        }
        
        
        
    }
    
    var episodeCell: some View {
        HStack(alignment: .top, spacing: 12) {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 80, height: 80)
                .foregroundStyle(.indigo.gradient.opacity(0.5))
            
            VStack(alignment: .leading) {
                Text("Episode Title")
                    .font(.headline)
                
                Text("Here is the short discription for latest episode.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
