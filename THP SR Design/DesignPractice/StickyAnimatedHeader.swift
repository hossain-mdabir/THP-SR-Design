//
//  StickyAnimatedHeader.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 29/11/22.
//

import SwiftUI

struct StickyAnimatedHeader: View {
    
    @State var currentType = "Popular"
    
    // MARK: - For smooth sliding
    @Namespace var animation
    
    
    @State var headerOffsets: (CGFloat, CGFloat) = (0,0)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                HeaderView()
                
                // MARK: - Header View
                LazyVStack(pinnedViews: [.sectionHeaders]) {
                    
                    Section {
                        SongList()
                    } header: {
                        PinnedHeaderView()
                            .background(Color.black)
                            .offset(y: headerOffsets.1 > 0 ? 0 : -headerOffsets.1 / 8)
                            .modifier(OffsetModifier(Offset: $headerOffsets.0, returnFromStart: false))
                            .modifier(OffsetModifier(Offset: $headerOffsets.1))
                    }
                    
                }
            }
        }
        .overlay(content: {
            
            Rectangle()
                .fill(.black)
                .frame(height: 50)
                .frame(maxHeight: .infinity, alignment: .top)
                .opacity(headerOffsets.0 < 5 ? 1 : 0)
            
        })
        .coordinateSpace(name: "SCROLL")
        .ignoresSafeArea(.container, edges: .vertical)
    }
    
    // MARK: - Pinned content
    @ViewBuilder
    func SongList() -> some View {
        
        VStack(spacing: 25) {
            
            ForEach(1...10, id: \.self) { count in
                Text("\(count)")
            }
            
        }
        .padding()
        .padding(.top, 25)
        .padding(.bottom, 150)
        
        
    }
    
//    func getIndex(album: Album) -> Int {
//
//        return _album.firstIndex { currentAlbum in
//
//            return album.id == currentAlbum.id
//
//        } ?? 0
//
//    }
    
    // MARK: - Header View
    @ViewBuilder
    func HeaderView() -> some View {
        GeometryReader { geometry in
            let minY = geometry.frame(in: .named("SCROLL")).minY
            let size = geometry.size
            let height = (size.height + minY)
            
            Image("tiger")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: height < 0 ? height : 0, alignment: .top)
                .overlay(content: {
                    
                    ZStack(alignment: .bottom) {
                        
                        // Dimming out the text content
                        LinearGradient(colors: [
                            
                            .clear,
                            .black.opacity(0.5)
                            
                            
                        ], startPoint: .top, endPoint: .bottom)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("ANIMAL")
                                .font(.callout)
                                .foregroundColor(.gray)
                            
                            HStack(alignment: .bottom, spacing: 10) {
                                
                                Text("Ariana Grande")
                                    .font(.title.bold())
                                    .foregroundColor(Color.white)
                                
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.blue)
                                    .background(
                                        Circle()
                                            .fill(.white)
                                            .padding(3)
                                    )
                                
                            }
                            
                            
                            Label {
                                
                                Text("Monthly Listeners")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white.opacity(0.7))
                                
                            } icon: {
                                Text("10,000,986")
                                    .fontWeight(.semibold)
                            }
                            .font(.caption)
                            
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 25)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    
                })
                .cornerRadius(15)
                .offset(y: minY)
            
        }
        .frame(height: 250)
    }
    
    // MARK: - Pinned header
    @ViewBuilder
    func PinnedHeaderView() -> some View {
        
        let types: [String] = ["Popular", "Albums", "New"]
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 25) {
                ScrollView {
                    ForEach(types, id: \.self) { type in
                        
                        VStack(spacing: 12) {
                            
                            Text(type)
                                .fontWeight(.semibold)
                                .foregroundColor(currentType == type ? .white : .gray)
                            
                            ZStack {
                                
                                if currentType == type {
                                    
                                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                                        .fill(.white)
                                        .matchedGeometryEffect(id: "TAB", in: animation)
                                    
                                } else {
                                    
                                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                                        .fill(.clear)
                                    
                                }
                                
                            }
                            .padding(.horizontal, 8)
                            .frame(height: 4)
                            
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            
                            withAnimation(.easeInOut) {
                                
                                currentType = type
                                
                            }
                            
                        }
                        
                    }
                }
                
            }
            .padding(.horizontal)
            .padding(.top, 25)
            .padding(.bottom, 5)
            
        }
        
    }
}

struct StickyAnimatedHeader_Previews: PreviewProvider {
    static var previews: some View {
        HeaderHome()
    }
}


