//
//  Router.swift
//  ArchitectureBootcamp
//
//  Created by Marcin Jędrzejak on 26/02/2025.
//

import SwiftUI

extension EnvironmentValues {
    @Entry var router: Router = MockRouter()
}

public protocol Router {
    func showScreen<T: View>(_ option: SegueOption, @ViewBuilder destination: @escaping (Router) -> T)
    func dismissScreen()

    func showAlert(_ option: AlertType, title: String, subtitle: String?, buttons: (@Sendable () -> AnyView)?)
    func dismissAlert()

    func showModal<T: View>(backgroundColor: Color, transition: AnyTransition, @ViewBuilder destination: @escaping () -> T)
    func dismissModal()
}

struct MockRouter: Router {
    func showScreen<T: View>(_ option: SegueOption, @ViewBuilder destination: @escaping (Router) -> T) where T: View {
        print("Mock router does not work.")
    }
    
    func dismissScreen() {
        print("Mock router does not work.")
    }

    func showAlert(_ option: AlertType, title: String, subtitle: String?, buttons: (() -> AnyView)?) {
        print("Mock router does not work.")
    }

    func dismissAlert() {
        print("Mock router does not work.")
    }

    func showModal<T: View>(backgroundColor: Color, transition: AnyTransition, @ViewBuilder destination: @escaping () -> T) {
        print("Mock router does not work.")
    }

    func dismissModal() {
        print("Mock router does not work.")
    }
}
