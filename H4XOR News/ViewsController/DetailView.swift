//
//  DetailView.swift
//  H4XOR News
//
//  Created by dan phi on 02/05/2023.
//

import SwiftUI
struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}

