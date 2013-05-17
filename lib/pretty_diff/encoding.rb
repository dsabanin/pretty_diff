require 'charlock_holmes'

module PrettyDiff
  module Encoding
    extend self

    def enforce(encoding, text)
      result = text
      if (detected = detect(result)) && detected.downcase != encoding.downcase
        result = convert(result, detected, encoding)
      end
      if RUBY_VERSION >= "2.0.0"
        encoded = result.force_encoding(encoding)
        drop_not_encodable_chars(encoding, encoded)
      else
        result
      end
    end

    def drop_not_encodable_chars(encoding, text)
      if text.encoding == encoding
        text.encode(encoding, encoding, :invalid => :replace)
      else
        raise("String is not #{encoding}, but #{text.encoding}")
      end
    end

    def detect(str)
      if detected = CharlockHolmes::EncodingDetector.detect(str)
        detected[:encoding]
      end
    end

    def convert(str, from, to)
      CharlockHolmes::Converter.convert(str, from, to)
    end

  end
end
