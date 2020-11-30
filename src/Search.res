open Belt

// Naive O(n): Iterate over each element
module Naive = {
  let find = (items: array<int>, item: int) => {
    Array.getIndexBy(items, curr => curr == item)
  }
}

// Binary O(logn): Check the middle element and compare if lower/higher than target, removing half of the options
module Binary = {
  let rec find = (items: array<int>, ~lo=0, ~hi=Array.length(items), item: int) => {
    let mid = (lo + hi) / 2

    switch items[mid] {
    | Some(guess) when guess == item => Some(mid)
    | Some(guess) when guess > item => find(items, item, ~lo, ~hi=mid - 1)
    | Some(guess) when guess < item => find(items, item, ~lo=mid + 1, ~hi)
    | _ => None
    }
  }
}
