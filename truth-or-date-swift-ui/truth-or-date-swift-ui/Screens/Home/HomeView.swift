//
//  HomeView.swift
//  truth-or-date-swift-ui
//
//  Created by Quang Nguyễn Như on 21/05/2023.
//

import SwiftUI
import CoreData

struct HomeView: View {

    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("image_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150, alignment: .top)
                Spacer()
            }
            
            VStack(spacing: 16) {
                Text("Who is playing?")
                    .font(.custom("Chalkduster", fixedSize: 20))
                    .lineLimit(nil)
                RoundedRectangle(cornerRadius: 5).fill(Color.black).frame(height: 55)
                RoundedRectangle(cornerRadius: 5).fill(Color.black).frame(height: 55)
                Button {
                    print("Add player")
                } label: {
                    Text("+ ADD PLAYER")
                        .font(.custom("Chalkduster", fixedSize: 16))
                        .lineLimit(nil)
                }
                .frame(maxWidth: .infinity, minHeight: 50)
                .foregroundColor(.black)
                .background(.clear)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding([.leading, .trailing], 24)

            VStack{
                Spacer()
                Button {
                    print("Play")
                } label: {
                    Text("Play")
                        .font(.custom("Chalkduster", fixedSize: 16))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(.teal)
                .padding([.leading, .trailing, .bottom], 24)

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().preferredColorScheme(.light)
        HomeView().preferredColorScheme(.dark)
    }
}
