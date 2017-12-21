import Foundation
import PlaygroundSupport

let filePath = playgroundSharedDataDirectory.appendingPathComponent("passphraseList.txt")

let content = try String(contentsOf: filePath, encoding: String.Encoding.utf8)

func isValid(passphrase: String) -> Bool {
    let phrases = passphrase.split(separator: " ")
    let phraseSet = Set(phrases)
    return phraseSet.count == phrases.count
}

func makeContentIntoArray(content: String) -> [String.SubSequence] {
    return content.split(separator: "\n")
}

func checkAllPassphrases() -> Int {
    let contentArray = makeContentIntoArray(content: content)
    let filtered = contentArray.filter { isValid(passphrase: String($0)) }

    return filtered.count
}

checkAllPassphrases()

//Part 2

func isSortedPassphraseValid(passphrase: String) -> Bool {
    let phrases = passphrase.split(separator: " ")
    let sortedPhrases: [String] = phrases.map { String($0.sorted()) }

    let phraseSet = Set(sortedPhrases)
    return phraseSet.count == phrases.count
}

func checkAllSortedPassphrases() -> Int {
    let contentArray = makeContentIntoArray(content: content)
    let filtered = contentArray.filter { isSortedPassphraseValid(passphrase: String($0)) }

    return filtered.count
}

checkAllSortedPassphrases()
