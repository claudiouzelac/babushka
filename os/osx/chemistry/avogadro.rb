dep 'Avogadro.app' do
  source 'http://jaist.dl.sourceforge.net/project/avogadro/avogadro/1.1.1/Avogadro-1.1.1.dmg.zip'
end

dep 'avogadro-osx' do
  requires 'Avogadro.app'
end