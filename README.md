# RichError

## Info:

A simple error protocol for structuring errors. Data can be passed along for use with debugging.

## Example implementation:

### Declaration:

```
struct NetworkRequestManagerError: RichError {
    typealias ErrorKind = NetworkRequestManagerErrorKind

    enum NetworkRequestManagerErrorKind: String {
        case non200StatusCode
        case nonJsonResponse
    }

    var kind: NetworkRequestManagerErrorKind
    var data: [String: String]
}
```

### Call site:

```
NetworkRequestManagerError(kind: .nonJsonResponse, data: ["request": request, "response": response, "data": data])
```
