//
//  MainListView.swift
//  SwUI_MemoApp
//
//  Created by junhyuk on 3/20/24.
//

import SwiftUI


struct MainListView: View {
    
    @EnvironmentObject var store: MemoStore
    
    @State private var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                
                NavigationLink{
                    
                    DetailView(memo: memo)
                } label: {
                    
                    MemoCell(memo: memo)
                }
            }
            .listStyle(.plain)
            .navigationTitle("나의 메모")
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
                
            }
            // 쓰기 화면 Modal방식으로 구현
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
        }
    }
}


struct MainListView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}

