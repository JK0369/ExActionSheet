//
//  ContentView.swift
//  ExActionSheet
//
//  Created by 김종권 on 2022/08/24.
//

import SwiftUI

struct ContentView: View {
  @State var isShowing = false
  @State var isActionSheetShowing = false
  
  var body: some View {
    VStack {
      Button("Alert") {
        isShowing = true
      }
      .alert("title", isPresented: $isShowing) {
        Button("OK", role: .destructive) { print("tap ok") }
        Button("cancel", role: .cancel) { print("tap cancel") }
      }
      Divider()
      Button("ActionSheet") {
        isActionSheetShowing = true
      }
      .confirmationDialog("title", isPresented: $isActionSheetShowing) {
        Button("OK", role: .destructive) { print("tap ok") }
        Button("cancel", role: .cancel) { print("tap cancel") }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
