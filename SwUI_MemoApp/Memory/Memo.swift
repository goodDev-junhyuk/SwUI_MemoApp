//
//  Memo.swift
//  SwUI_MemoApp
//
//  Created by junhyuk on 3/20/24.
//

import Foundation

class Memo: Identifiable, ObservableObject {
    
    let id: UUID
    @Published var content: String
    
    let insertDate: Date
    
    init(content: String, inserDate: Date = Date.now) {
        
        id = UUID()
        self.content = content
        self.insertDate = inserDate
        
        
    }
}
