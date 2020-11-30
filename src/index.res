let items = [1, 2, 3, 4] // Must be sorted!
let item = 3

let naive = Search.Naive.find(items, item)
let binary = Search.Binary.find(items, item)

Js.log2("Search.Naive:", naive)
Js.log2("Search.Binary:", binary)

let unsorted = [4, 3, 6, 1]

let selectionSorted = Sort.Selection.sort(unsorted)

Js.log2("Sort.Selection:", selectionSorted)
