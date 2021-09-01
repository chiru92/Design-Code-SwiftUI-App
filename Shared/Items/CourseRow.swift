//
//  CourseRow.swift
//  SwiftUI Practice App
//
//  Created by CHIRANJIT SARKAR on 01/09/21.
//

import SwiftUI

struct CourseRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "paperplane.circle.fill")
                .renderingMode(.template)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.medium)
                .background(Color.blue)
                .clipShape(Circle())
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 4.0) {
                Text("SwiftUI")
                    .font(.subheadline)
                    .bold()
                Text("Description")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
//        .font(.system(size: 34, weight: .bold, design: .rounded))
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow()
    }
}
