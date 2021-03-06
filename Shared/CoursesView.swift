//
//  CoursesView.swift
//  SwiftUI Practice App
//
//  Created by CHIRANJIT SARKAR on 01/09/21.
//

import SwiftUI

struct CoursesView: View {
    @State private var show = false
    @Namespace var namespace
    @State private var selectedItem: Course?
    @State private var isDisabled = false
    
    var body: some View {
        
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(courses) { item in
                        CourseItem(course: item)
                            .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                            .frame(width: 335, height: 250)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    show.toggle()
                                    selectedItem = item
                                    isDisabled = true
                                }
                            }
                            .disabled(isDisabled)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            if selectedItem != nil {
                ScrollView {
                    CourseItem(course: selectedItem!)
                        .matchedGeometryEffect(id: selectedItem!.id, in: namespace)
                        .frame(height: 300)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                                selectedItem = nil
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    isDisabled = false
                                }
                            }
                        }
                    
                    VStack {
                        ForEach(0 ..< 15) { item in
                            CourseRow()
                        }
                    }
                    .padding()
                }
                .background(Color("Background 1"))
                .transition(
                    .asymmetric(
                        insertion: AnyTransition
                                            .opacity
                                            .animation(Animation.spring()
                                                        .delay(0.3)),
                        removal: AnyTransition
                                            .opacity
                                            .animation(.spring())
                    )
                )
                .edgesIgnoringSafeArea(.all)
            }
        }
//        .animation(.spring())
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
