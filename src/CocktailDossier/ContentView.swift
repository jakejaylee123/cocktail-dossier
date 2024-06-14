//
//  ContentView.swift
//  CocktailDossier
//
//  Created by Jake Lee on 6/13/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Recipe]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    
                    NavigationLink {
                        if let createdAt = item.createdAt {
                            Text("Item at \(createdAt, format: Date.FormatStyle(date: .numeric, time: .standard))")
                        } else {
                            Text("Uncreated item")
                        }
                    } label: {
                        Text(item.name)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Recipe(
                name: "",
                createdAt: Optional.none,
                lastUpdated: Optional.none,
                desc: "",
                utensils: [],
                ingredients: [],
                directions: [])
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Recipe.self, inMemory: true)
}
