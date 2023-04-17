//
//  InfoView.swift
//  MaestroDemo
//
//  Created by Ahmed Elzohry on 17/04/2023.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Ahmed Elzohry")
                    .accessibilityIdentifier("author_name_label")
                
                Text("aelzohry2010@gmail.com")
                    .accessibilityIdentifier("author_email_label")
            }
            .navigationTitle("About")
            .toolbar {
                Button("Done") {
                    dismiss()
                }
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
