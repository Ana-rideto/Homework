import UIKit

// 1

func myPow(a: Int, p: Int) -> Double?{
    
    var result : Double = 1
    if a <= 0 && p < 0 {
        return nil
    }
    else if p == 0 {
        return 1
    }
    else if a > 0 && p < 0 {
        for _ in p ..< 0 {
        result  /= Double(a)}
    }
    else {
        for _ in 0 ..< p {
            result *= Double(a)
        }
    }
return result
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

var primes = [2]

for num in stride(from: 3, through: 10007, by: 2) {
    for p in primes {
        if p * p > num {
            primes.append(num)
            break
        }
        if num % p == 0 {
            break
        }
    }
}

print(primes.count)
