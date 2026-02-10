import XCTest
@testable import GreyTest
#if canImport(ViewInspector)
import ViewInspector

final class ActiveLearningCardTests: XCTestCase {
    func testShowsHeaderAndButtonLabel() throws {
        let view = ActiveLearningCard()
        let inspection = try view.inspect()
        let header = try inspection.vStack().text(0).string()
        XCTAssertEqual(header, "Active learning path")

        let inner = try inspection.vStack().vStack(1)
        let title = try inner.text(0).string()
        XCTAssertEqual(title, "Fullstack mobile Engineer")

        let navLink = try inner.navigationLink(2)
        let buttonLabel = try navLink.labelView().hStack().text(0).string()
        XCTAssertEqual(buttonLabel, "View full path")
    }
}

#endif
