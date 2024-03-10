//
//  DetailView.swift
//  HAX0R News
//
//  Created by Ashwin Gupta on 25/2/2024.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "http://www.google.com")
}
