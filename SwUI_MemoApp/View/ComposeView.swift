//
//  ComposeView.swift
//  SwUI_MemoApp
//
//  Created by junhyuk on 3/20/24.
//

import SwiftUI

struct ComposeView: View {
    
    @EnvironmentObject var store: MemoStore
    
    @Environment(\.dismiss) var dismiss
    
    @State private var content: String = ""
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextEditor(text: $content)
                    .padding()
                
            }
            .navigationTitle("새로운 메모")
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        
                        store.insert(memo: content)
                        
                        dismiss()
                    } label: {
                        Text("취소")
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Text("저장")
                    }
                }
            }
        }
    }
}


struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        
        ComposeView()
            .environmentObject(MemoStore())
    }
}
