import DotKit

extension Dotkit {
    @discardableResult
    public func closure(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }

    @discardableResult
    public func `if`(_ value: Bool, _ closure: (Self) -> Void, else elseClosure: (Self) -> Void = { _ in }) -> Self {
        if value {
            closure(self)
        } else {
            elseClosure(self)
        }
        return self
    }
    
    @discardableResult
    public func `if`(_ logicClosure: (Base) -> Bool, `true` closure: (Self) -> Void, false elseClosure: (Self) -> Void = { _ in }) -> Self {
        if logicClosure(base) {
            closure(self)
        } else {
            elseClosure(self)
        }
        return self
    }
}
