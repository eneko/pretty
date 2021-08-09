import Foundation

do {
    var lines: [String] = []
    while let line = readLine() {
        lines.append(line)
    }
    if lines.isEmpty {
        print("Missing input")
        exit(-1)
    }

    let input = lines.joined(separator: "\n")
    guard let data = input.data(using: .utf8) else {
        print("Invalid input format")
        exit(-1)
    }

    let json = try JSONSerialization.jsonObject(with: data, options: [.fragmentsAllowed])
    let prettyJSON = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)

    guard let output = String(data: prettyJSON, encoding: .utf8) else {
        print("Invalid output format")
        exit(-1)
    }

    print(output)
}
catch {
    print(error)
    exit(-1)
}
