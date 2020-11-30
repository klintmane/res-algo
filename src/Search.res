open Belt

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
