import SourceKittenFramework
#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

enum ParsingState {
    case endRequest
    case startRequestContent
}

var hasError = false
var requestContent = ""
var reqid = -1
var state = ParsingState.endRequest

while let input = readLine() {
    debugLog("state: \(state)")
    debugLog("input: \(input)")
    debugLog("input length: \(input.lengthOfBytes(using: String.Encoding.utf8))")
    switch state {
    case .endRequest:
        guard let id = Int(input) else {
            debugLog("wrong format for reqid")
            hasError = true
            break
        }
        reqid = id
        state = .startRequestContent
    case .startRequestContent:
        if input == "" {
            debugLog("requestContent: \(requestContent)")
            let request = Request.yamlRequest(yaml: requestContent)
            let response = (try? request.send()) ?? [:]
            print(reqid)
            print(toJSON(toNSDictionary(response)))
            print("")
            fflush(stdout) // workaround for swift print

            // reset all state
            (hasError, requestContent, reqid, state) =
                (false, "", -1, ParsingState.endRequest)
        } else {
            requestContent += input
        }
    }
}
