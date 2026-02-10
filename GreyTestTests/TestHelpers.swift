// Test support for ViewInspector
#if canImport(ViewInspector)
import ViewInspector
@testable import GreyTest

// Enable inspection on target views
extension ActiveLearningCard: Inspectable {}
extension LearningPathDetailView: Inspectable {}
#endif
