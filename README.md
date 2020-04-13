## Exo 1

Ajout d'une fonction delete pour la view "BurgersListView":
```swift
 private func deleteBurger(at offsets: IndexSet) {
        self.burgers.remove(atOffsets: offsets)
}
```