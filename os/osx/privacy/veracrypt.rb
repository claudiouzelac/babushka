dep 'VeraCrypt.installer' do
  met? {
    '/Applications/VeraCrypt.app'.p.exists?
  }
  source 'http://downloads.sourceforge.net/project/veracrypt/VeraCrypt%201.17/VeraCrypt_1.17.dmg'
end

dep 'veracrypt-osx' do
  requires 'VeraCrypt.installer'
end