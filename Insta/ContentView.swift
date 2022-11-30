//
//  ContentView.swift
//  Insta
//
//  Created by Gilberto Mera on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: false){
                Stories()
                Divider()
                Post()
                Post(image: "usr2", description: "Hoy esta hermoso el dìa!😇")
                Post(image: "usr3", description: "Vamonos al cielo!😝")
                Post(image: "usr4", description: "Noa Noa Vamos a Bailarrr😋")
                Post(image: "usr5", description: "Hoy esta hermoso el dìa!😇")
                Post(image: "usr6", description: "Vamonos al cielo!😝")
                Post(image: "usr7", description: "Noa Noa Vamos a Bailarrr😋")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logoInstagram")
            
            Spacer()
            
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
            
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    var image: String = "usr1"
    var name: String = "Danny"
    
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60,height: 60)
                    .cornerRadius(50)
            }
            .overlay(){
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topTrailing, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68,height: 68)
            }
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15.0){
                Story()
                Story(image: "usr2", name: "Mary")
                Story(image: "usr3", name: "Luisa")
                Story(image: "usr4", name: "Manuel")
                Story(image: "usr5", name: "Maria")
                Story(image: "usr6", name: "Victoria")
                Story(image: "usr7", name: "Laura")
            }
            .padding(.horizontal)
            
        }
        .padding( .vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack{
            HStack {
                Image("usr1")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text("Danny")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var image : String = "usr1"
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                //.frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            HStack{
                HStack(spacing: 10.0){
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                Spacer()
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
            
        }
    }
}

struct Post: View {
    var image : String = "usr1"
    var description : String = "Hola como estas!"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            
            PostContent(image: image)
            
            Text("101 likes")
                .font(.footnote)
                //.frame(width: .infinity)
                .padding(.horizontal, 12)
                .bold()
            Text(description)
                .font(.footnote)
                //.frame(width: .infinity)
                .padding(.horizontal, 12)
            HStack(){
                HStack(spacing: 7.0){
                    Image(image)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    Text("Agrega comentario ...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 9)
                Spacer()
                HStack{
                    Text("🤣")
                    Text("😇")
                    Text("😎")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                    
                }
            }
        }
    }
}
