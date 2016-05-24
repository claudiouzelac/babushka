dep('quit-printing-app-when-finished-printing') {
  shell('defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true')
}

dep('print-osx') {
  requires [
            'quit-printing-app-when-finished-printing'
           ]
}