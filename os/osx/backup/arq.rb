dep 'Arq.app' do
  source 'https://www.arqbackup.com/download/Arq.dmg'
end

dep 'arq-osx' do
  requires 'Arq.app'
end