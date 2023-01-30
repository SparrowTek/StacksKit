import JavaScriptCore

public struct StacksKit {
    private let vm = JSVirtualMachine()
    private let context: JSContext
    
    public init() {
        context = JSContext(virtualMachine: vm)
        guard let path = Bundle.module.path(forResource: "Stacks", ofType: "js"),
                let jsCode = try? String(contentsOfFile: path, encoding: .utf8) else { return }
        context.evaluateScript(jsCode)
        
        context.exceptionHandler = { context, exception in
            print("### Exception: \(String(describing: exception))")
        }
        
        let generate = context.objectForKeyedSubscript("generateSecretKey")
        let secretKey = generate?.call(withArguments: [])
        print("### secretKey: \(String(describing: secretKey))")
    }
}
