//  Created by Axel Ancona Esselmann on 2/10/20.
//  Copyright © 2020 Axel Ancona Esselmann. All rights reserved.
//

import Foundation

public struct Tuple {

    static public func toTuple<Value, T1>(_ value: Value, tuple: T1) -> (Value, T1) {
        return (value, tuple)
    }

    // MARK: - prepend

    static public func prepend<Value, T1>(value: Value, toTuple tuple: (T1)) -> (Value, T1) {
        return toTuple(value, tuple: tuple)
    }

    static public func prepend<Value, T1, T2>(value: Value, toTuple tuple: (T1, T2)) -> (Value, T1, T2) {
        return (value, tuple.0, tuple.1)
    }

    static public func prepend<Value, T1, T2, T3>(value: Value, toTuple tuple: (T1, T2, T3)) -> (Value, T1, T2, T3) {
        return (value, tuple.0, tuple.1, tuple.2)
    }

    static public func prepend<Value, T1, T2, T3, T4>(value: Value, toTuple tuple: (T1, T2, T3, T4)) -> (Value, T1, T2, T3, T4) {
        return (value, tuple.0, tuple.1, tuple.2, tuple.3)
    }

    static public func prepend<Value, T1, T2, T3, T4, T5>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5)) -> (Value, T1, T2, T3, T4, T5) {
        return (value, tuple.0, tuple.1, tuple.2, tuple.3, tuple.4)
    }

    static public func prepend<Value, T1, T2, T3, T4, T5, T6>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5, T6)) -> (Value, T1, T2, T3, T4, T5, T6) {
        return (value, tuple.0, tuple.1, tuple.2, tuple.3, tuple.4, tuple.5)
    }

    static public func prepend<Value, T1, T2, T3, T4, T5, T6, T7>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5, T6, T7)) -> (Value, T1, T2, T3, T4, T5, T6, T7) {
        return (value, tuple.0, tuple.1, tuple.2, tuple.3, tuple.4, tuple.5, tuple.6)
    }

    static public func prepend<Value, T1, T2, T3, T4, T5, T6, T7, T8>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5, T6, T7, T8)) -> (Value, T1, T2, T3, T4, T5, T6, T7, T8) {
        return (value, tuple.0, tuple.1, tuple.2, tuple.3, tuple.4, tuple.5, tuple.6, tuple.7)
    }

    // MARK: - append

    static public func append<T1, Value>(value: Value, toTuple tuple: (T1)) -> (T1, Value) {
        return toTuple(tuple, tuple: value)
    }

    static public func append<T1, T2, Value>(value: Value, toTuple tuple: (T1, T2)) -> (T1, T2, Value) {
        return (tuple.0, tuple.1, value)
    }

    static public func append<T1, T2, T3, Value>(value: Value, toTuple tuple: (T1, T2, T3)) -> (T1, T2, T3, Value) {
        return (tuple.0, tuple.1, tuple.2, value)
    }

    static public func append<T1, T2, T3, T4, Value>(value: Value, toTuple tuple: (T1, T2, T3, T4)) -> (T1, T2, T3, T4, Value) {
        return (tuple.0, tuple.1, tuple.2, tuple.3, value)
    }

    static public func append<T1, T2, T3, T4, T5, Value>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5)) -> (T1, T2, T3, T4, T5, Value) {
        return (tuple.0, tuple.1, tuple.2, tuple.3, tuple.4, value)
    }

    static public func append<T1, T2, T3, T4, T5, T6, Value>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5, T6)) -> (T1, T2, T3, T4, T5, T6, Value) {
        return (tuple.0, tuple.1, tuple.2, tuple.3, tuple.4, tuple.5, value)
    }

    static public func append<T1, T2, T3, T4, T5, T6, T7, Value>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5, T6, T7)) -> (T1, T2, T3, T4, T5, T6, T7, Value) {
        return (tuple.0, tuple.1, tuple.2, tuple.3, tuple.4, tuple.5, tuple.6, value)
    }

    static public func append<T1, T2, T3, T4, T5, T6, T7, T8, Value>(value: Value, toTuple tuple: (T1, T2, T3, T4, T5, T6, T7, T8)) -> (T1, T2, T3, T4, T5, T6, T7, T8, Value) {
        return (tuple.0, tuple.1, tuple.2, tuple.3, tuple.4, tuple.5, tuple.6, tuple.7, value)
    }

    // MARK: - arrayFromTuple

    static public func arrayFromTuple<T>(_ tuple: T) -> Array<T> {
        return [
            tuple
        ]
    }

    static public func arrayFromTuple<T>(_ tuple: (T, T)) -> Array<T> {
        return [
            tuple.0,
            tuple.1
        ]
    }

    static public func arrayFromTuple<T>(_ tuple: (T, T, T)) -> Array<T> {
        return [
            tuple.0,
            tuple.1,
            tuple.2
        ]
    }

    static public func arrayFromTuple<T>(_ tuple: (T, T, T, T)) -> Array<T> {
        return [
            tuple.0,
            tuple.1,
            tuple.2,
            tuple.3
        ]
    }

    static public func arrayFromTuple<T>(_ tuple: (T, T, T, T, T)) -> Array<T> {
        return [
            tuple.0,
            tuple.1,
            tuple.2,
            tuple.3,
            tuple.4
        ]
    }

    static public func arrayFromTuple<T>(_ tuple: (T, T, T, T, T, T)) -> Array<T> {
        return [
            tuple.0,
            tuple.1,
            tuple.2,
            tuple.3,
            tuple.4,
            tuple.5
        ]
    }

    static public func arrayFromTuple<T>(_ tuple: (T, T, T, T, T, T, T)) -> Array<T> {
        return [
            tuple.0,
            tuple.1,
            tuple.2,
            tuple.3,
            tuple.4,
            tuple.6
        ]
    }

    static public func arrayFromTuple<T>(_ tuple: (T, T, T, T, T, T, T, T)) -> Array<T> {
        return [
            tuple.0,
            tuple.1,
            tuple.2,
            tuple.3,
            tuple.4,
            tuple.6,
            tuple.7
        ]
    }

    // MARK: - tuple(from: [T])

    static public func tuple<T>(from array: [T]) -> (T, T)? {
        guard array.count == 2 else {
            return nil
        }
        return (array[0], array[1])
    }

    static public func threeTuple<T>(from array: [T]) -> (T, T, T)? {
        guard array.count == 3 else {
            return nil
        }
        return (array[0], array[1], array[2])
    }

    static public func triple<T>(from array: [T]) -> (T, T, T)? {
        return threeTuple(from: array)
    }

    static public func fourTuple<T>(from array: [T]) -> (T, T, T, T)? {
        guard array.count == 4 else {
            return nil
        }
        return (array[0], array[1], array[2], array[3])
    }

    static public func quadruple<T>(from array: [T]) -> (T, T, T, T)? {
        return fourTuple(from: array)
    }

    static public func fiveTuple<T>(from array: [T]) -> (T, T, T, T, T)? {
        guard array.count == 5 else {
            return nil
        }
        return (array[0], array[1], array[2], array[3], array[4])
    }

    static public func quintuple<T>(from array: [T]) -> (T, T, T, T, T)? {
        return fiveTuple(from: array)
    }

    static public func sixTuple<T>(from array: [T]) -> (T, T, T, T, T, T)? {
        guard array.count == 6 else {
            return nil
        }
        return (array[0], array[1], array[2], array[3], array[4], array[5])
    }

    static public func sextuple<T>(from array: [T]) -> (T, T, T, T, T, T)? {
        return sixTuple(from: array)
    }

    static public func sevenTuple<T>(from array: [T]) -> (T, T, T, T, T, T, T)? {
        guard array.count == 7 else {
            return nil
        }
        return (array[0], array[1], array[2], array[3], array[4], array[5], array[6])
    }

    static public func septuple<T>(from array: [T]) -> (T, T, T, T, T, T, T)? {
        return sevenTuple(from: array)
    }

    static public func eightTuple<T>(from array: [T]) -> (T, T, T, T, T, T, T, T)? {
        guard array.count == 8 else {
            return nil
        }
        return (array[0], array[1], array[2], array[3], array[4], array[5], array[6], array[7])
    }

    static public func octuple<T>(from array: [T]) -> (T, T, T, T, T, T, T, T)? {
        return eightTuple(from: array)
    }

    // MARK: - tuple order

    static public func numberOfValues<T1, T2>( _ tuple: (T1, T2)) -> Int {
        return 2
    }

    static public func numberOfValues<T1, T2, T3>( _ tuple: (T1, T2, T3)) -> Int {
        return 3
    }

    static public func numberOfValues<T1, T2, T3, T4>( _ tuple: (T1, T2, T3, T4)) -> Int {
        return 4
    }

    static public func numberOfValues<T1, T2, T3, T4, T5>( _ tuple: (T1, T2, T3, T4, T5)) -> Int {
        return 5
    }

    static public func numberOfValues<T1, T2, T3, T4, T5, T6>( _ tuple: (T1, T2, T3, T4, T5, T6)) -> Int {
        return 6
    }

    static public func numberOfValues<T1, T2, T3, T4, T5, T6, T7>( _ tuple: (T1, T2, T3, T4, T5, T6, T7)) -> Int {
        return 7
    }

    static public func numberOfValues<T1, T2, T3, T4, T5, T6, T7, T8>( _ tuple: (T1, T2, T3, T4, T5, T6, T7, T8)) -> Int {
        return 8
    }

    // MARK: - nilValues

    static public func nilValues<T1>() -> T1? {
        return nil
    }

    static public func nilValues<T1, T2>() -> (T1?, T2?) {
        return (nil, nil)
    }

    static public func nilValues<T1, T2, T3>() -> (T1?, T2?, T3?) {
        return (nil, nil, nil)
    }

    static public func nilValues<T1, T2, T3, T4>() -> (T1?, T2?, T3?, T4?) {
        return (nil, nil, nil, nil)
    }

    static public func nilValues<T1, T2, T3, T4, T5>() -> (T1?, T2?, T3?, T4?, T5?) {
        return (nil, nil, nil, nil, nil)
    }

    static public func nilValues<T1, T2, T3, T4, T5, T6>() -> (T1?, T2?, T3?, T4?, T5?, T6?) {
        return (nil, nil, nil, nil, nil, nil)
    }

    static public func nilValues<T1, T2, T3, T4, T5, T6, T7>() -> (T1?, T2?, T3?, T4?, T5?, T6?, T7?) {
        return (nil, nil, nil, nil, nil, nil, nil)
    }

    static public func nilValues<T1, T2, T3, T4, T5, T6, T7, T8>() -> (T1?, T2?, T3?, T4?, T5?, T6?, T7?, T8?) {
        return (nil, nil, nil, nil, nil, nil, nil, nil)
    }

}


