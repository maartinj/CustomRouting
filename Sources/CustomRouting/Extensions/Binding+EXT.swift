//
//  Binding+EXT.swift
//  ArchitectureBootcamp
//
//  Created by Marcin Jędrzejak on 26/02/2025.
//

import SwiftUI

extension Binding where Value == Bool {

    init<T: Sendable>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }
    }
}
