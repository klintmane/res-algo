open Belt

// Selection O(n^2): Iterate each index, sorting n remaining elements
module Selection = {
  let smallest = (items: array<int>) => {
    let acc = (0, Option.getWithDefault(items[0], 0))

    Array.reduceWithIndex(items, acc, ((minI, min), item, itemI) =>
      item < min ? (itemI, item) : (minI, min)
    )
  }

  let sort = (items: array<int>) => {
    let (result, _) = Array.reduce(items, ([], items), ((sorted, unsorted), _) => {
      let (minI, min) = smallest(unsorted)
      (
        Array.concat(sorted, [min]),
        Array.concat(
          Array.slice(unsorted, ~offset=0, ~len=minI), // left-side
          Array.sliceToEnd(unsorted, minI + 1), // right-side
        ),
      )
    })
    result
  }
}
