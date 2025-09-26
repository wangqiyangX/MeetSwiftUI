//
//  File.swift
//  SwiftCodeView
//
//  Created by wangqiyang on 2025/9/26.
//

import Foundation
import Observation
import SwiftTreeSitter
import SwiftUI
import TreeSitterSwift

struct SyntaxHighlightingTheme {
    let plain: Color
    let attribute: Color
    let spell: Color
    let keyword: Color
    let number: Color
    let string: Color
    let function: Color
    let type: Color
    let variable: Color
    let directive: Color
    let macro: Color
    let documentation: Color

    static let `default` = SyntaxHighlightingTheme(
        plain: Color.primary,
        attribute: Color.brown,
        spell: Color.secondary.opacity(0.8),
        keyword: Color.pink,
        number: Color.yellow,
        string: Color.orange,
        function: Color.mint,
        type: Color.cyan,
        variable: Color.green,
        directive: Color.yellow,
        macro: Color.pink,
        documentation: Color.secondary.opacity(0.8)
    )
}

@Observable
public final class SwiftCodeViewModel {
    var config: LanguageConfiguration?
    var parser: Parser
    var attributedText: AttributedString = ""
    var theme: SyntaxHighlightingTheme = .default
    var showLineNumbers: Bool = true
    private var bundledHighlightsQuery: Query?

    public init() {
        self.parser = Parser()
        setupLanguageConfiguration()
        //        setupBundledQueriesIfNeeded()
    }

    private func setupLanguageConfiguration() {
        do {
            self.config = try LanguageConfiguration(
                tree_sitter_swift(),
                name: "Swift"
            )
            if let language = config?.language {
                try self.parser.setLanguage(language)
            }
        } catch {
            // Fall back to setting the language directly without queries.
            // This avoids Xcode Previews sandbox path issues for bundled query files.
            _ = try? self.parser.setLanguage(tree_sitter_swift())
            self.config = nil
        }
    }

    private func setupBundledQueriesIfNeeded() {
        guard bundledHighlightsQuery == nil else { return }
        // Try loading highlights.scm from the SwiftPM module bundle
        guard
            let url = Bundle.main
                .resourceURL?
                .appendingPathComponent(
                    "TreeSitterSwift_TreeSitterSwift.bundle"
                )
                .appendingPathComponent(
                    "Contents/Resources/queries/highlights.scm"
                )
        else {
            return
        }
        do {
            if let language = config?.language {
                bundledHighlightsQuery = try language.query(contentsOf: url)
            } else {
                let lang = SwiftTreeSitter.Language(tree_sitter_swift())
                bundledHighlightsQuery = try lang.query(contentsOf: url)
            }
        } catch {
            bundledHighlightsQuery = nil
        }
    }

    func highlight(code: String) {
        guard let config = config,
            let tree = parser.parse(code)
        else {
            attributedText = AttributedString(code)
            return
        }

        var result = AttributedString(code)

        // Apply syntax highlighting
        //        if let query = config.queries[.highlights] ?? bundledHighlightsQuery {
        //            print("Success")
        //
        //        }
        let query = config.queries[.highlights]!
        let cursor = query.execute(in: tree)
        let highlights =
            cursor
            .resolve(with: .init(string: code))
            .highlights()

        // Sort highlights by start position
        let sortedHighlights = highlights.sorted {
            $0.range.lowerBound < $1.range.lowerBound
        }

        // Apply highlighting to attributed string
        for highlight in sortedHighlights {
            let range = Range(highlight.range, in: result)!
            let color = colorForHighlight(highlight.name)

            result[range].foregroundColor = color
            result[range].font = .system(.body, design: .monospaced)
        }

        // Apply default styling to unhighlighted text
        // Only set font globally, not foregroundColor to avoid overriding highlights
        result.font = .system(.body, design: .monospaced)

        // Apply default text color only to ranges that don't have highlighting
        if let query = config.queries[.highlights] {
            let cursor = query.execute(in: tree)
            let highlights = cursor.resolve(with: .init(string: code))
                .highlights()
            let highlightedRanges = highlights.map {
                Range($0.range, in: result)!
            }

            // Find unhighlighted ranges and apply default color
            var currentIndex = result.startIndex
            for range in highlightedRanges.sorted(by: {
                $0.lowerBound < $1.lowerBound
            }) {
                if currentIndex < range.lowerBound {
                    let unhighlightedRange = currentIndex..<range.lowerBound
                    result[unhighlightedRange].foregroundColor = theme.plain
                }
                currentIndex = range.upperBound
            }

            // Apply default color to remaining unhighlighted text
            if currentIndex < result.endIndex {
                let remainingRange = currentIndex..<result.endIndex
                result[remainingRange].foregroundColor = theme.plain
            }
        } else {
            // If no highlighting available, apply default color to entire text
            result.foregroundColor = theme.plain
        }

        attributedText = result
    }

    private func colorForHighlight(_ highlightName: String) -> Color {
        switch highlightName {
        case "spell":
            return theme.spell
        case "variable", "variable.member", "variable.parameter":
            return theme.variable
        case "attribute":
            return theme.attribute
        case "keyword", "keyword.import", "keyword.modifier", "keyword.type",
            "keyword.operator", "constructor", "variable.builtin",
            "keyword.conditional":
            return theme.keyword
        case "string":
            return theme.string
        case "function.call":
            return theme.function
        case "type":
            return theme.type
        case "number":
            return theme.number
        case "keyword.directive":
            return theme.directive
        case "function.macro":
            return theme.macro
        case "comment.documentation":
            return theme.documentation
        default:
            return theme.plain
        }
    }

}

public struct MSSwiftCodeView: View {
    let code: String

    @State private var viewModel = SwiftCodeViewModel()

    public init(code: String) {
        self.code = code
    }

    public var body: some View {
        Text(viewModel.attributedText)
            .onAppear {
                viewModel.highlight(code: code)
            }
            .onChange(of: code) { _, newCode in
                viewModel.highlight(code: newCode)
            }
            .scrollIndicators(.hidden)
            .padding()
            .visionGlassIfAvailable()
    }
}

extension View {
    @ViewBuilder
    fileprivate func visionGlassIfAvailable() -> some View {
        #if canImport(SwiftUI)
            if #available(iOS 26, macOS 26, visionOS 26, watchOS 26, *) {
                self.glassEffect(.regular, in: .rect(cornerRadius: 10))
            } else {
                self
            }
        #else
            self
        #endif
    }
}

#Preview {
    NavigationStack {
        MSSwiftCodeView(
            code:
                """
                /// advanced
                """
        )
        .frame(height: .infinity)
        .padding()
    }
}
