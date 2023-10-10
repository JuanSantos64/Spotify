//
//  SwiftUIView.swift
//  Desafio Spotify
//
//  Created by Student11 on 05/09/23.
//

import SwiftUI

struct song: Identifiable{
    var id = UUID()
    var name: String
    var banda: String
    var capa: String
}


struct ContentView: View {
    
    @State var list : [song] = [
        song(name: "Cogulândia", banda: "Matue", capa: "https://s2-g1.glbimg.com/4YCTQOs7a47qPX73Lm25vw3rows=/0x0:1600x1600/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/W/A/7wBV8eTXeqgitO5JASRg/capa-matue-mdt.jpg"),
        song(name: "Antes", banda: "Matue", capa: "https://i1.sndcdn.com/artworks-kCbSbogHoF0M1oNx-LbnezQ-t500x500.jpg"),
        song(name: "Gorilla Roxo", banda: "Matue", capa: "https://s2-g1.glbimg.com/4YCTQOs7a47qPX73Lm25vw3rows=/0x0:1600x1600/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/W/A/7wBV8eTXeqgitO5JASRg/capa-matue-mdt.jpg"),
        song(name: "Vem Chapar", banda: "Matue", capa: "https://i1.sndcdn.com/artworks-kCbSbogHoF0M1oNx-LbnezQ-t500x500.jpg"),
        song(name: "777-666", banda: "Matue", capa: "https://s2-g1.glbimg.com/4YCTQOs7a47qPX73Lm25vw3rows=/0x0:1600x1600/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/W/A/7wBV8eTXeqgitO5JASRg/capa-matue-mdt.jpg"),
        song(name: "É sal", banda: "Matue", capa: "https://i1.sndcdn.com/artworks-kCbSbogHoF0M1oNx-LbnezQ-t500x500.jpg"),
        song(name: "Maquina do Tempo", banda: "Matue", capa: "https://s2-g1.glbimg.com/4YCTQOs7a47qPX73Lm25vw3rows=/0x0:1600x1600/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/W/A/7wBV8eTXeqgitO5JASRg/capa-matue-mdt.jpg")]
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.black]), startPoint: .topLeading, endPoint: .leading)
                    .ignoresSafeArea()
                VStack{
                    ScrollView (showsIndicators: false) {
                        Image("Image")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .shadow(radius: 15)
                        
                        Text("Maquina do Tempo")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .frame(width: 390, alignment: .leading)
                        
                        HStack{
                            Image("Matue")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .leading)
                                .clipShape(Circle())
                            
                            Text("Matue")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .frame(width: 340, alignment: .leading)
                        }
                        
                        .frame(width: 50, height: 50)
                        
                        ForEach(list) { item in
                            NavigationLink(destination: Musica(musica: item)){
                                HStack {
                                    AsyncImage(url: URL (string: "\(item.capa)")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    VStack{ Text(item.name)
                                            .foregroundColor(.white)
                                            .frame(width: 300, alignment: .leading)
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                            .frame(width: 300, alignment: .trailing)
                                        
                                        Text(item.banda)
                                            .foregroundColor(.white)
                                            .frame(width: 300, alignment: .leading)
                                        
                                    }
                                    
                                    
                                }
                            }
                        }
                        
                       Text("Sugeridos")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                Image("Image 2")
                                    .padding()
                                Image("Image 2")
                                    .padding()
                                Image("Image 2")
                                    .padding()
                                Image("Image 2")
                                    .padding()
                            }
                    
                        }
                        
                    }
                }
            }
        }
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


