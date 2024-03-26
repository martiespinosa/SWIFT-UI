//
//  Grids2.swift
//  Bootcamp
//
//  Created by Martí Espinosa Farran on 26/3/24.
//

import SwiftUI

struct Grids2: View {
    var body: some View {
        Grid {
            GridRow {
                Color.green.opacity(0.5)
                    .gridCellColumns(3)
            }
            GridRow {
                Color.blue.opacity(0.5)
                Color.red.opacity(0.5)
                    .gridCellColumns(2)
            }
            GridRow {
                Color.blue.opacity(0.5)
                Color.orange.opacity(0.5)
                Color.red.opacity(0.5)
            }
            GridRow {
                Color.orange.opacity(0.5)
                    .gridCellColumns(2)
                Color.red.opacity(0.5)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Grids2()
}
