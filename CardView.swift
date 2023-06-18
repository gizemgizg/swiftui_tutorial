//
//  CardView.swift
//  swiftuifirstproject
//
//  Created by Gizem Malçok on 18.06.2023.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        Text(scrum.title)
    }
}

struct CardView_Previews: PreviewProvider {
    static let scrum = DailyScrum.sampleData[1]
    static var previews: some View {
        CardView(scrum: scrum).background(scrum.theme.mainColor).previewLayout(.fixed(width: 400, height: 60))
    }
}
