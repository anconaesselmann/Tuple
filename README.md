# Tuple

[![Version](https://img.shields.io/cocoapods/v/Tuple.svg?style=flat)](https://cocoapods.org/pods/Tuple)
[![License](https://img.shields.io/cocoapods/l/Tuple.svg?style=flat)](https://cocoapods.org/pods/Tuple)
[![Platform](https://img.shields.io/cocoapods/p/Tuple.svg?style=flat)](https://cocoapods.org/pods/Tuple)

### Tuple adds functionality for working with n-tuples. 

- Appending (`append(value:, toTuple:)`) or prepending (`prepend(value:, toTuple:)`) creates a copy of a given n-tuple with an additional value. 

- We can convert n-tuples to arrays (`arrayFromTuple(T)`) and arrays to n-tuples (`tuple(from: [])`, `triple(from: [])`, ...). 

- `element(at:Int, in: Tuple)` allows accessing tuples with an integer index.

## Example

Let's play a game of Cat, Mouse and Dog. It's contrived. It uses Tuple. Here we go:

#### Setup!
##### Lets create some players and shuffle a deck of cards. Nothing new here, no use of Tuple.
```swift
// This game of cat and mouse and dog is played with three players.
let allPlayers = (cat: "Tom", mouse: "Jerry", dog: "Pluto")

enum Suit: String, CaseIterable { case clubs; case diamonds; case hearts; case spades }

// Let's generate a shuffled array of tuples to represent our deck of cards:
var deck: [(suit: Suit, value: Int)] = Suit.allCases.flatMap {
    Array(zip(Array(repeating: $0, count: 13), Array(1...13)))
}.shuffled()
```

#### Let's play! 
##### Here we finally get to use the Tuple dependency.
```swift
// We keep track of all played cards in an array of tripples that includes the player wo drew the card:
var playedCards: [(round: Int, suit: Suit, value: Int, player: String)] = []

var round = 0
while !deck.isEmpty {
    // Each round is played with only two players that are chosen at random

    // First we convert the tripple of all players into an array and shuffle it:
    let shuffled = Tuple.arrayFromTuple(allPlayers).shuffled()

    // Now lets select two players and use a tuple to represent the players of this round:
    let opponents: (firstTurn: String, secondTurn: String) = Tuple.tuple(from: Array(shuffled[0...1]))!

    // We now convert the tuple of opponents into an array so we can itterate over it.
    for currentPlayer in Tuple.arrayFromTuple(opponents) {

        // let's pick a card and add it to our array of played cards.
        let card = deck.popLast()!

        // We first have to turn the card tuple into a played card triple:
        let playedCard: (suit: Suit, value: Int, player: String) = Tuple.append(value: currentPlayer, toTuple: card)

        // We will need to the round to calculate the final scores. Let's prepend it to the playedCard tuple. Because we can ;-)
        let playedCardInRound: (round: Int, suit: Suit, value: Int, player: String) = Tuple.prepend(value: round, toTuple: playedCard)

        // Now we are able to add the card to our pile of playedCards
        playedCards.append(playedCardInRound)
    }
    round += 1
}
```

To recap: We used `arrayFromTuple(_ :)`, `tuple(from: [])`, `append(value:, toTuple:)` and `prepend(value:, toTuple:)`.

#### Who won? 
##### For good measure let's use some more Tuple methods.
```swift
// Let's calculate scores based on the players target suit, the value of their card and the round number
func calculateValue(player: String, suit: Suit) -> Int {
    return playedCards
        .filter { $0.player == player }
        .filter { $0.suit == suit }
        .reduce(into: 0) { $0 += $1.round - $1.value }
}

let scores = (
    catScore: calculateValue(player: allPlayers.cat, suit: .hearts),
    mouseScore: calculateValue(player: allPlayers.mouse, suit: .diamonds),
    dogScore: calculateValue(player: allPlayers.dog, suit: .clubs)
)

// We determine the actual winner by first picking one of the scores at random.

let tupleOrder = Tuple.order(of: scores)
var elementIndices: [Int] = Array(0..<tupleOrder).shuffled()
let elementIndex = elementIndices.popLast()!
let targetScore: Int = Tuple.element(at: elementIndex, in: scores)!

// If the picked score is a duplicate, everyone with the same score wins
// TODO: implement

// If the picked score is the highest score, both lower scores get a point, and if the picked score is the lowest score, both higher scores get a point
// TODO: implement

// If the picked score is in the middle, the picked score gets a point.
// TODO: implement
```

Another recap: We used `order(of:)` and `element(at:, in:)` to calculate the final winners.


To run the example playground, clone the repo and open the `Example` playground.

## Requirements

## Installation

Tuple is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Tuple'
```

## Author

Axel Ancona Esselmann, axel@anconaesselmann.com

## License

Tuple is available under the MIT license. See the LICENSE file for more info.
