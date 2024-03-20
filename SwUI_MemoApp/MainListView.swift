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
        
        List(store.list) { memo in
            Text(memo.content)
        }
        .navigationTitle("나의 메모")
        
    }
}

struct MainListView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}

