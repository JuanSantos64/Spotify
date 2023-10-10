//
//  Musica.swift
//  Desafio Spotify
//
//  Created by Student11 on 05/09/23.
//

import SwiftUI

struct Musica: View {
    
    var musica : song
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.black]), startPoint: .topLeading, endPoint: .leading)
                .ignoresSafeArea()
            VStack{
                Spacer()
                AsyncImage(url: URL (string: "\(musica.capa)")) { image in
                    image.resizable()
                        .frame(width: 300, height: 300)
                        .shadow(radius: 15)
                } placeholder: {
                    ProgressView()
                }
                Text(musica.name)
                    .foregroundColor(.white)
                Text("Matue")
                    .foregroundColor(.white)
                Spacer()
                HStack {
                    Image(systemName: "shuffle")
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "play.fill")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "repeat")
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                }
                Spacer()
            }
            
            
        }
    }
}



struct Musica_Previews: PreviewProvider {
    static var previews: some View {
        Musica(musica:  song(name: "Cogulândia", banda: "Matue", capa: "https://s2-g1.glbimg.com/4YCTQOs7a47qPX73Lm25vw3rows=/0x0:1600x1600/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/W/A/7wBV8eTXeqgitO5JASRg/capa-matue-mdt.jpg"))
    }
}
