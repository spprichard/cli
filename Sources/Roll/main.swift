import ArgumentParser

struct Options: ParsableArguments {
    @Option(default: 1, help: ArgumentHelp("Rolls the dice <n> times.", valueName: "n"))
    var times: Int
    
    @Option(default: 6, help: ArgumentHelp(
        "Rolls an <m>-sided dice.",
        discussion: "Use this option to override the default value of a six-sided die.",
        valueName: "m"
    ))
    var sides: Int
    
    @Option(help: "A seed to use for repeatable random generation")
    var seed: Int?
    
    @Flag(name: .shortAndLong, help: "Show all roll results")
    var verbose: Bool
}

let options = Options.parseOrExit()
let seed = options.seed ?? .random(in: .min ... .max)

let rolls = (1...options.times).map { _ in
    Int.random(in: 1...options.sides)
}

if options.verbose {
    for (number, roll) in zip(1..., rolls) {
        print("Roll \(number): \(roll)")
    }
}

print(rolls.reduce(0, +))
