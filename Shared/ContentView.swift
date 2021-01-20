//
//  ContentView.swift
//  Shared
//
//  Created by Branton Hung on 2021-01-20.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    
    var body: some View {
        NavigationView {
        List(sandwiches) { sandwich in
            SandwichCell(sandwich: sandwich)
            }
            HStack {
                Spacer()
                Text("\(sandwiches.count) sandwiches")
                    .foregroundColor(.secondary)
                Spacer()
            }
        navigationTitle("Sandwiches")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
 
