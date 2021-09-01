//
//  CourseItem.swift
//  SwiftUI Practice App
//
//  Created by CHIRANJIT SARKAR on 01/09/21.
//

import SwiftUI

struct CourseItem: View {
    var course: Course = courses[0]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Spacer()
                HStack {
                    Spacer()
                    Image(course.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                    
                Text(course.title)
                    .fontWeight(.bold)
                    
                Text(course.subtitle)
                    .font(.footnote)
                    
                    
            }
            .padding(.all)
            .background(course.color)
            .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
            .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 10)
        }
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
