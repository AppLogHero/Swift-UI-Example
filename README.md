## Exo 1

Ajout d'une fonction delete pour la view "BurgersListView":
```swift
 private func deleteBurger(at offsets: IndexSet) {
        self.burgers.remove(atOffsets: offsets)
}
```

Appel du "onDelete":
```swift
ForEach(burgers, id: \.id) { burger in
    NavigationLink(destination: BurgerDetailView(burger: burger, burgers: self.burgers), label: {
        HStack {
            Image(burger.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .padding(.leading, 8)
                .padding(.trailing, 16)
                Text(burger.name)
            }
        })
    }
    .onDelete(perform: deleteBurger(at:))
```     