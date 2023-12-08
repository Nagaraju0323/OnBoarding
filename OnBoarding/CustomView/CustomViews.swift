//
//  CustomViews.swift
//  OnBoarding
//
//  Created by Nagaraju on 08/12/23.
//

import Foundation
import SwiftUI

//MARK: - ArrowButton
struct ArrowButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "arrow.right")
                .font(.system(size: 30))
                .foregroundColor(.white)
        }
        .padding()
        .background(Circle().fill(Color.green).frame(width: 50, height: 50))
        .padding()
    }
}

//MARK: - SkipButton
struct SkipButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text("Skip").font(.title).bold()
                    .foregroundColor(.white)
                
                Image(systemName: "forward.frame")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
            }
        }
        .padding(10)
        .background(Rectangle().fill(Color.green).frame(width: 120, height: 50).cornerRadius(10))
        .padding()
    }
}
//MARK: - LefrArroButton

struct LefrArroButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "arrow.left")
                .font(.system(size: 30))
                .foregroundColor(.white)
        }
        .padding()
        .background(Circle().fill(Color.green).frame(width: 50, height: 50))
        .padding()
    }
}

#Preview{
    LefrArroButton(action: { })
}
