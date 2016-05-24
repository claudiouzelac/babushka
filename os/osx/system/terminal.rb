dep('only-use-utf8') {
  shell('defaults write com.apple.terminal StringEncodings -array 4')
}

dep('secure-keyboard-entry') {
  shell('defaults write com.apple.terminal SecureKeyboardEntry -bool true')
}

dep('terminal') {
  requires %w(only-use-utf8 secure-keyboard-entry)
}