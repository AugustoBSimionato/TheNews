//
//  SettingsView.swift
//  TheNews
//
//  Created by Augusto Simionato on 28/05/23.
//

import SwiftUI
import UserNotifications

struct Config {
    var notifications: Bool
    var sports: Bool
    var tech: Bool
    var economy: Bool
    var world: Bool
    var design: Bool
    var reminderWater: Bool
    
    var stepper: Int
}

struct SettingsView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    
    @State private var notifications = false
    @State private var sports = false
    @State private var tech = false
    @State private var economy = false
    @State private var world = false
    @State private var design = false
    @State private var reminderWater = false
    
    @State private var stepper = 1
    
    var body: some View {
        let config = loadConfig()
        
        NavigationStack {
            Form {
                Section(header: Text("Notifications")) {
                    Toggle("Send Notifications", isOn: $notifications)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                        .onTapGesture {
                            send()
                            let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                            impactHeavy.impactOccurred()
                        }
                }
                
                Section(header: Text("Newsletter settings")) {
                    Toggle("Sports", isOn: $sports)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Toggle("Tech", isOn: $tech)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Toggle("Economy", isOn: $economy)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Toggle("World", isOn: $world)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Toggle("Design", isOn: $design)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Toggle("Reminder to drink water", isOn: $reminderWater)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Stepper("Notifications per day: \(stepper)", value: $stepper) {_ in
                        let impactMed = UIImpactFeedbackGenerator(style: .soft)
                        impactMed.impactOccurred()
                    }
                }
                
                Button {
                    let config = Config(notifications: notifications, sports: sports, tech: tech, economy: economy, world: world, design: design, reminderWater: reminderWater, stepper: stepper)
                    save(config)
                    let impactMed = UIImpactFeedbackGenerator(style: .soft)
                        impactMed.impactOccurred()
                } label: {
                    Text("Save")
                }
                
                Section {
                    Link("Terms of Service", destination: URL(string: "https://augustobsimionato.github.io/TheNewsTerms/")!)
                }
            }
            .navigationTitle("Settings")
        }
        .onAppear {
            notifications = config.notifications
            sports = config.sports
            tech = config.tech
            economy = config.economy
            world = config.world
            design = config.design
            reminderWater = config.reminderWater
            stepper = config.stepper
        }
        .accentColor(.red)
    }
}

func save(_ config: Config) {
    let defaults = UserDefaults.standard
    
    defaults.set(config.notifications, forKey: "notifications")
    defaults.set(config.sports, forKey: "sports")
    defaults.set(config.tech, forKey: "tech")
    defaults.set(config.economy, forKey: "economy")
    defaults.set(config.world, forKey: "world")
    defaults.set(config.design, forKey: "design")
    defaults.set(config.reminderWater, forKey: "reminderWater")
    defaults.set(config.stepper, forKey: "stepper")
}

func loadConfig() -> Config {
    let defaults = UserDefaults.standard
    
    let notifications = defaults.bool(forKey: "notifications")
    let sports = defaults.bool(forKey: "sports")
    let tech = defaults.bool(forKey: "tech")
    let economy = defaults.bool(forKey: "economy")
    let world = defaults.bool(forKey: "world")
    let design = defaults.bool(forKey: "design")
    let reminderWater = defaults.bool(forKey: "reminderWater")
    let stepper = defaults.integer(forKey: "stepper")
    
    return Config(notifications: notifications, sports: sports, tech: tech, economy: economy, world: world, design: design, reminderWater: reminderWater, stepper: stepper)
}

func send() {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
        if success {
            print("Deu certo")
        } else if let error = error {
            print(error.localizedDescription)
        }
    }
    
    let content = UNMutableNotificationContent()
    content.title = "New notice"
    content.subtitle = "A new newsletter just arrive!"
    content.sound = UNNotificationSound.default
    
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    
    UNUserNotificationCenter.current().add(request)
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
