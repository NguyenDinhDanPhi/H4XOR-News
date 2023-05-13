//
//  ContentView.swift
//  H4XOR News
//
//  Created by dan phi on 23/04/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var netWorking = NetworkManager()
    var body: some View {
        NavigationView {
            List(netWorking.post) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)

                    }
                }
            }
            .navigationTitle("H4XOR News")
        }
        .onAppear {
            self.netWorking.fetchData()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


