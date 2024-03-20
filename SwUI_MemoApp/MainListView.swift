//
//  MainListView.swift
//  SwUI_MemoApp
//
//  Created by junhyuk on 3/20/24.
//

import SwiftUI

struct MainListView: View {
    
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                
                MemoCell(memo: memo)
                
            }
            .listStyle(.plain)
            .navigationTitle("나의 메모")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}

