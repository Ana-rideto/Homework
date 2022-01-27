import UIKit

// 1

func myPow(a: Int, p: Int) -> Double?{
    
    var result : Double = 1
    if a == 0 && p < 0 {
        return nil
    }
    else if p == 0 {
        return 1
        
    var multiplier = Double(a)
        if p < 0 {
            multiplier = 1 / multiplier
        }
        var exponent = abs(p)
        var res = 1.0
    
        while exponent > 0 {
            if (exponent & 1 != 0) {
                res *= multiplier;
            }
            multiplier *= multiplier;
            exponent >>= 1;
        }
        return res
    }
myPow(a: 2, p: -3)

// 2

let blackJack: () -> (Int) = {
    Int.random (in: 15...25)
}

let roulette: () -> (String, Int) = {
    (Bool.random() ? "Black" : "Red", Int.random(in: 1...20))
}

var count = 1

while roulette() != ("Red", 13) && blackJack () != 21 {
    count += 1
}

print(count)

// 3

func sieveOfEratosthenes(from: Int, to n: Int) -> Int {
    var isprime = [Bool](repeating: true, count: n + 1)
    let root = Int(sqrt(Double(n))) + 1
    for i in 2 ... root {
        if isprime[i] {
            for k in stride(from: n / i, through: i, by: -1) {
                if isprime[k] {
                    isprime[i*k] = false
                }
            }
        }
    }
    var count = 0
    isprime.enumerated().forEach {
        count += $0.offset >= from && $0.element ? 1 : 0
    }
    return count
}
