//
//  DrawLandscapeView.swift
//  ProjectPompeii
//
//  Created by Ana Kiara Medeiros Braga on 18/08/22.
//

import SwiftUI

struct DrawLandscapeView: View {
    @State private var drawing = [Line]()
    @State private var suggestion = DrawingModel.getRandomDrawing()
    
    var body: some View {
        ZStack (alignment: .center){
            
            Color("DrawBackground")
                .ignoresSafeArea()
            Image("padraoLandscape")
                .resizable()
                .ignoresSafeArea()
                //.scaledToFill()
            
            HStack (alignment: .center, spacing: 54){
                VStack (alignment: .center){
                    ZStack (alignment: .center){
                        Image("MolduraLandscape")
                            .shadow(color: Color(.sRGB, red: 0.0, green: 0.0, blue: 0.0, opacity: 0.25), radius: 5, x: 8, y: 7)
                        Canvas { context, size in
                            for line in drawing {
                                var path  = Path()
                                path.addLines(line.points)
                                
                                context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)

                            }
                        }
                        .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local).onChanged({ value in
                                    let newPoint = value.location
                                    if value.translation.width + value.translation.height == 0 {
                                        drawing.append(Line(points: [newPoint], color: Color.black, lineWidth: 5))
                                    } else {
                                        let index = drawing.count - 1
                                        drawing[index].points.append(newPoint)
                                    }
                                    
                                })
                                
                                )
                        .frame(width: 502.74, height: 272.84)
                        //padrão em todos os modos
                        .background(RoundedRectangle(cornerRadius: 31).inset(by: 3).foregroundColor(Color(UIColor(red: 1.00, green: 0.98, blue: 0.86, alpha: 1.00))))
                        .background(Color("Contorno"))
                        //padrão em todos os modos
                        .cornerRadius(31)

                        HStack (alignment: .center, spacing: 349.06){
                            Image("Fitinhas esquerdas")
                                .shadow(color: Color(.sRGB, red: 0.0, green: 0.0, blue: 0.0, opacity: 0.25), radius: 5, x: -4, y: 6)
                            Image("Fitinhas Direitas")
                                .shadow(color: Color(.sRGB, red: 0.0, green: 0.0, blue: 0.0, opacity: 0.25), radius: 5, x: -4, y: 6)
                        }
                    }
                    .offset(x: 54, y: 32)

                                        
                    Text(suggestion)
                        .foregroundColor(Color(UIColor(red: 0.99, green: 0.94, blue: 0.00, alpha: 1.00)))
                        .font(.custom("RubikMarkerHatch-Regular", size: 32))
                        .offset(x: 54)
                }
                VStack (alignment: .trailing, spacing: 129){
                    Button(action: {
                        drawing = [Line]()}) {
                            ZStack{
                                Circle()
                                    .frame(width: 83, height: 83)
                                    .foregroundColor(Color(UIColor(red: 0.99, green: 0.94, blue: 0.00, alpha: 1.00)))
                                    .overlay(
                                        Circle()
                                            .strokeBorder(Color("Contorno"), lineWidth: 3)
                                        )
                                Image("lixeira fechada")
                            }
                        }
                        //.offset(x: 29.06)
                    
                    Button(action: {
                        suggestion = DrawingModel.getRandomDrawing()
                        drawing = [Line]()
                    }) {
                            ZStack{
                                Circle()
                                    .frame(width: 83, height: 83)
                                    .foregroundColor(Color(UIColor(red: 0.99, green: 0.94, blue: 0.00, alpha: 1.00)))
                                    .overlay(
                                        Circle()
                                            .strokeBorder(Color("Contorno"), lineWidth: 3)
                                        )
                                Image("enviar")
                            }
                        }
                    //.offset(x: 29.06)

                }
            }
            .statusBar(hidden: true)
        }
    }
}

struct DrawLandscapeView_Previews: PreviewProvider {
    static var previews: some View {
        DrawLandscapeView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
