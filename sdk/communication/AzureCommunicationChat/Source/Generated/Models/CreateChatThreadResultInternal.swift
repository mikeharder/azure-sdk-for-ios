// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// Result of the create chat thread operation.
public struct CreateChatThreadResultInternal: Codable {
    // MARK: Properties

    /// Chat thread.
    public let chatThread: ChatThreadPropertiesInternal?
    /// The participants that failed to be added to the chat thread.
    public let invalidParticipants: [ChatError]?

    // MARK: Initializers

    /// Initialize a `CreateChatThreadResultInternal` structure.
    /// - Parameters:
    ///   - chatThread: Chat thread.
    ///   - invalidParticipants: The participants that failed to be added to the chat thread.
    public init(
        chatThread: ChatThreadPropertiesInternal? = nil, invalidParticipants: [ChatError]? = nil
    ) {
        self.chatThread = chatThread
        self.invalidParticipants = invalidParticipants
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case chatThread = "chatThread"
        case invalidParticipants = "invalidParticipants"
    }

    /// Initialize a `CreateChatThreadResultInternal` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chatThread = try? container.decode(ChatThreadPropertiesInternal.self, forKey: .chatThread)
        self.invalidParticipants = try? container.decode([ChatError].self, forKey: .invalidParticipants)
    }

    /// Encode a `CreateChatThreadResultInternal` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if chatThread != nil { try? container.encode(chatThread, forKey: .chatThread) }
        if invalidParticipants != nil { try? container.encode(invalidParticipants, forKey: .invalidParticipants) }
    }
}