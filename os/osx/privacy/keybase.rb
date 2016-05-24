dep 'keybase.managed' do
  requires { on :osx, 'homebrew' }
  installs 'keybase'
end

# dep 'keybase_configured' do
#   met?{
#     '~/.cache/keybase/session.json'
#   }
#   meet {
#     shell('keybase login')
#   }
# end

dep 'keybase-osx' do
  requires 'keybase.managed'
end