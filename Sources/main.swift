import Foundation

guard let input = readLine() else {
    print("Missing JSON input")
    exit(-1)
}

guard let data = input.data(using: .utf8) else {
    print("Invalid input format")
    exit(-1)
}

guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
    print("JSON deserialization error")
    exit(-1)
}

guard let prettyJSON = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted) else {
    print("JSON serialization error")
    exit(-1)
}

guard let output = String(data: prettyJSON, encoding: .utf8) else {
    print("Invalid output format")
    exit(-1)
}

print(output)
