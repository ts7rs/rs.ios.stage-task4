import Foundation

final class CallStation {
    var userslist: Set<User> = []
    var callsList:[CallID: Call] = [:]
    var usersCurrentCallList:[UUID: Call] = [:]
}

extension CallStation: Station {
    
    func users() -> [User] {
      Array(userslist)
    }
    
    func add(user: User) {
      userslist.insert(user)
    }
    
    func remove(user: User) {
      userslist.remove(user)
    }
    
    func execute(action: CallAction) -> CallID? {
      nil
    }
    
    func calls() -> [Call] {
      []
    }
       
    func calls(user: User) -> [Call] {
      []
    }
       
    func call(id: CallID) -> Call? {
      nil
    }
    
    func currentCall(user: User) -> Call? {
      nil
    }
}
