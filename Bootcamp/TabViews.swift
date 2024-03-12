//
//  TabViews.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 12/3/24.
//

import SwiftUI

struct TabViews: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            StartView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Inicio")
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Explorar")
                }
                .tag(1)
            
            RadioView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Radio")
                }
                .tag(2)
            
            LibraryView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Biblioteca")
                }
                .tag(3)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Buscar")
                }
                .tag(4)
        }
        .accentColor(.pink)
        //.tabViewStyle(PageTabViewStyle())
    }
}

struct StartView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 0) {
                    ForEach(0..<50) { indexY in
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<10) { indexX in
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(.gray.opacity(0.6))
                                        .frame(
                                            width: indexY % 5 == 0 ? UIScreen.main.bounds.width * 0.8 : UIScreen.main.bounds.width * 0.4,
                                            height: indexY % 10 == 0 ? UIScreen.main.bounds.width * 0.6 : UIScreen.main.bounds.width * 0.4
                                        )
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Inicio")
        }
    }
}

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Explorar")
            }
            .navigationTitle("Explorar")
        }
    }
}

struct RadioView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Radio")
            }
            .navigationTitle("Radio")
        }
    }
}

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Biblioteca")
            }
            .navigationTitle("Biblioteca")
        }
    }
}

struct SearchView: View {
    
    @State var textSearched: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Buscar")
            }
            .navigationTitle("Buscar")
            .searchable(text: $textSearched)
        }
    }
}

#Preview {
    TabViews()
}
