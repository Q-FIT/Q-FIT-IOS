//
//  SwiftUIView.swift
//  Q-FIT
//
//  Created by 이서연 on 2023/09/11.
//

import SwiftUI

struct KeywordSelectionView: View {
    @State private var selectedKeywords: Set<String> = []
    
    let keywords = ["Swift", "iOS", "macOS", "Xcode", "UIKit", "Core Data"]
    
    var body: some View {
        VStack {
            Text("선택한 키워드: \(selectedKeywords.joined(separator: ", "))")
            
            ScrollView {
                ForEach(keywords, id: \.self) { keyword in
                    Button(action: {
                        if selectedKeywords.contains(keyword) {
                            selectedKeywords.remove(keyword)
                        } else {
                            selectedKeywords.insert(keyword)
                        }
                    }) {
                        Text(keyword)
                            .padding()
                            .background(selectedKeywords.contains(keyword) ? Color.blue : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

@main
struct KeywordSelectionApp: App {
    var body: some Scene {
        WindowGroup {
            KeywordSelectionView()
        }
    }
}
