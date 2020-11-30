let items = [1, 2, 3, 4] // Must be sorted!
let item = 3

let naive = Search.Naive.find(items, item)
let binary = Search.Binary.find(items, item)

Js.log2("Naive:", naive)
Js.log2("Binary:", binary)
