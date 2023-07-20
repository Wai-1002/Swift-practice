//
//  EventCellView.swift
//  PageTabViewStyleSample
//
//  Created by 若生優希 on 2023/01/14.
//

import SwiftUI

struct EventCellView: CellableView {
    typealias VM = ViewModel

    // MARK: ViewModel
    struct ViewModel: ICEventable { ... }


    // MARK: View
    var viewModel: ViewModel
    
    init(_ viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ...
    }
}
