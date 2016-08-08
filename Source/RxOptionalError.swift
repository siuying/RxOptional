import Foundation

public enum RxOptionalError: Error, CustomStringConvertible {
    case foundNilWhileUnwrappingOptional(Any.Type)
    case emptyOccupiable(Any.Type)

    public var description: String {
        switch self {
        case .foundNilWhileUnwrappingOptional(let type):
           return "Found nil while trying to unwrap type <\(String(type))>"
        case .emptyOccupiable(let type):
            return "Empty occupiable of type <\(String(type))>"
        }
    }
}
