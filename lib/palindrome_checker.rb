# frozen_string_literal: true

require_relative "palindrome_checker/version"

module PalindromeChecker
  class Error < StandardError; end
  def self.is_palindrome?(text)
    # 小文字化し、非英数字を削除
    cleaned_text = text.downcase.gsub(/[^a-z0-9]/, '')
    cleaned_text == cleaned_text.reverse
  end
end
