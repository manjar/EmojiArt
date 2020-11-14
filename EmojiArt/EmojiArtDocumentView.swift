//
//  EmojiArtDocumentView.swift
//  EmojiArt
//
//  Created by Eli Manjarrez on 11/13/20.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    @ObservedObject var document: EmojiArtDocument
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(EmojiArtDocument.palette.map { String($0) }, id: \.self) { emoji in
                    Text(emoji).font(Font.system(size: defaultEmojiSize))
                }
            }
        }.padding(.horizontal)
        Color.yellow
    }
    
    private let defaultEmojiSize: CGFloat = 40.0
}
