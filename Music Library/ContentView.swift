//
//  ContentView.swift
//  Music Library
//
//  Created by Aamer Essa on 21/12/2022.
//

import SwiftUI
struct MusicLibrary: View {
    var body: some View {
        VStack {
            HeaderView()
            Divider()
                .padding()
            SongsView()
            ArtistsView()
        }
    }
}
struct MusicLibrary_Previews: PreviewProvider {
    static var previews: some View {
        MusicLibrary()
    }
}
struct HeaderView: View {
    var body: some View {
        HStack(spacing: 30){
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.red)
                    .frame(width: 100,height: 100)
                    .overlay(Image("Play"))
                    
            }
            VStack{
                Text("Memories of shadow")
                    .font(.body)
                Text("Music for James")
                    .font(.footnote).foregroundColor(Color.blue)
                Text("UPDATED SATURDAY")
                    .font(.footnote)
                Text("Lorem ipsum dolor sit amet,")
                    .font(.footnote)
                Text("consectetur adipiscing")
                    .font(.footnote)
                HStack{
                    Button(action: {
                        print("Button action")
                    }) {
                        HStack {
                            Image(systemName: "play")
                            Text("Play")
                        }
                    }.buttonStyle(.bordered)
            
                    Button(action: {
                        print("Button action")
                    }) {
                        HStack {
                            Image(systemName: "shuffle")
                            Text("Shuffle")
                        }
                    }.buttonStyle(.bordered)
                    
                }
                
            }
        }
    }
}
struct SongsView: View {

    var body: some View {
        List(Song.songs) { song in
            HStack(spacing: 30){
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(song.gradient)
                    .frame(width: 50,height: 50)
                    .overlay(Image("music"))
                Text(song.name)
                Spacer()
                Text(song.duration)
            }
        }.padding(.horizontal,-20)
            
    }
}
struct ArtistsView: View {

    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(Artist.artists) { artist in
                    VStack(spacing: 20){
                        Rectangle()
                            .fill(artist.gradient)
                            .frame(width: 50,height: 50)
                            .cornerRadius(50)
                            .overlay(Image("mic"))
                        /*@START_MENU_TOKEN@*/Text(artist.name)/*@END_MENU_TOKEN@*/
                            
                    }
                }
            }
        }.frame(height:100)
    }
}
struct Song: Identifiable {
    let id = UUID()
    let name: String
    let duration: String
    
    // This is just an attribute that will generate a random gradient color for the song
    let gradient: LinearGradient = {
        let colors: [Color] = [.orange, .pink, .purple, .red, .yellow]
        return LinearGradient(gradient:
                                Gradient(colors: [colors.randomElement()!,
                                                  colors.randomElement()!]),
                              startPoint: .center,
                              endPoint: .topTrailing)
    }()
    
    static let songs: [Song] = [
        Song(name: "Memories Of Shadow", duration: "13:15"),
        Song(name: "Still Need June", duration: "05:12"),
        Song(name: "Calming World", duration: "01:40"),
        Song(name: "Live Screams", duration: "14:51"),
        Song(name: "Better NIGHT SPIRITS", duration: "07:38"),
        Song(name: "Tearful Eyes", duration: "07:05"),
        Song(name: "I Believe In Snooze", duration: "11:58"),
        Song(name: "Earning", duration: "07:56"),
        Song(name: "Keen Screams", duration: "15:12"),
        Song(name: "Cheerful Smiles", duration: "04:47"),
        Song(name: "Scenes In Memories Never Fade", duration: "08:40"),
        Song(name: "Sweetheart Inside Repetition", duration: "06:39"),
        Song(name: "Funny Cafe Music", duration: "11:02"),
        Song(name: "Out Of Nature Noise", duration: "08:44"),
        Song(name: "Wild Ocean", duration: "01:29"),
        Song(name: "Overjoyed by drama", duration: "08:56"),
        Song(name: "What about chills", duration: "11:44"),
        Song(name: "Unexpected Midnight", duration: "15:45"),
        Song(name: "Out Of Evening", duration: "07:52"),
        Song(name: "Memories Of Eyes", duration: "15:35"),
        Song(name: "Running Gems", duration: "12:55"),
        Song(name: "Cool Rain", duration: "13:06"),
        Song(name: "Chilled Night", duration: "02:05"),
        Song(name: "24K Paradise", duration: "05:49"),
        Song(name: "A Distilled Change", duration: "08:50"),
        Song(name: "Not Morning", duration: "09:25"),
        Song(name: "Trapped By Danger", duration: "10:34"),
        Song(name: "Blissful Brave Life", duration: "06:02"),
        Song(name: "Various Horizon", duration: "11:04")
    ]
}

struct Artist: Identifiable {
    let id = UUID()
    let name: String
    let gradient: LinearGradient = {
        let colors: [Color] = [.orange, .pink, .purple, .red, .yellow]
        return LinearGradient(gradient:
                                Gradient(colors: [colors.randomElement()!,
                                                  colors.randomElement()!]),
                              startPoint: .center,
                              endPoint: .topTrailing)
    }()
    
    static let artists: [Artist] = [
        Artist(name: "Cher Thabang"),
        Artist(name: "Selma Alondra"),
        Artist(name: "Mokhtar Mikita"),
        Artist(name: "Christabella Ruperta"),
        Artist(name: "Avianna Tycho"),
        Artist(name: "Gianna Abhinav"),
        Artist(name: "Dylan Garland"),
        Artist(name: "Shaimaa Orval"),
        Artist(name: "Christy Justin"),
        Artist(name: "Eva Irvin")
    ]
}

