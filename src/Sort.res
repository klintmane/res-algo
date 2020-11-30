open Belt

// Naive O(n^2): Iterate each index, sorting n remaining elements
module Naive = {
  let smallest = (items: array<int>) => {
    let acc = (0, Option.getWithDefault(items[0], 0))

    Array.reduceWithIndex(items, acc, ((minI, min), item, itemI) =>
      item < min ? (itemI, item) : (minI, min)
    )
  }

  let sort = (items: array<int>) => {
    let (sorted, _) = Array.reduce(items, ([], items), ((result, rest), _) => {
      let (minI, min) = smallest(rest)
      (
        Array.concat(result, [min]),
        Array.concat(Array.slice(rest, ~offset=0, ~len=minI), Array.sliceToEnd(rest, minI + 1)),
      )
    })
    sorted
  }
}
