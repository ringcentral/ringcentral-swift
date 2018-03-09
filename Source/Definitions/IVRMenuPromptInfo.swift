import Foundation
import ObjectMapper
open class IVRMenuPromptInfo: Mappable {
    /*
    Prompt mode: custom media or text = ['Audio', 'TextToSpeech']
    */
    open var `mode`: String?
    /*
    For 'Audio' mode only. Prompt media reference
    */
    open var `audio`: PromptLanguageInfo?
    /*
    For 'TextToSpeech' mode only. Prompt text
    */
    open var `text`: String?
    /*
    For 'TextToSpeech' mode only. Prompt language metadata
    */
    open var `language`: AudioPromptInfo?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(mode: String? = nil, audio: PromptLanguageInfo? = nil, text: String? = nil, language: AudioPromptInfo? = nil) {
        self.init()
        self.mode = `mode`
        self.audio = `audio`
        self.text = `text`
        self.language = `language`
    }
    open func mapping(map: Map) {
        `mode` <- map["mode"]
        `audio` <- map["audio"]
        `text` <- map["text"]
        `language` <- map["language"]
    }
}
