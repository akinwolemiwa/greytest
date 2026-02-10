import XCTest
@testable import GreyTest
#if canImport(ViewInspector)
import ViewInspector

final class LearningPathDetailViewTests: XCTestCase {
    func testHeaderTextsStayLeading() throws {
        let view = LearningPathDetailView()
        let inspection = try view.inspect()
        let scroll = try inspection.scrollView()
        let container = try scroll.vStack()
        let headerStack = try container.vStack(0)

        let stageText = try headerStack.text(0).string()
        XCTAssertEqual(stageText, "Stage 3 of 11")

        let titleText = try headerStack.text(1).string()
        XCTAssertEqual(titleText, "Fullstack mobile\nengineer path")
    }
}

#endif
