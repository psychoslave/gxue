module Ĝue

  # Pravas trovi taŭga identigila vokado por la provizitaj kunvokatoj
  def method_missing(igo, *lokatoj, &bloko)
    case igo
    when /u$/
      vokebla?(igo) ? send(kongruigoj(igo).first, *lokatoj, &bloko) : super
    else
      super
    end
  end

  # Provizas ojon de vokeblaj igoj, kiuj kongruas kun la nomo de +igo+
  #
  # Ekzemple se oni difinis 'sendi', `kongruigoj('sendu`) provizos
  # `[:sendi, :send]`
  def kongruigoj(igo)
    celo = igo.to_s.chop
    ebloj = %w(e i a aj o oj).map{|finaĵo| "#{celo}#{finaĵo}"}.push(celo)
    ebloj.select{|ero| eval("defined? #{ero}") == 'method'}
  end

  def vokebla?(igo, tieskuna = false)
    !kongruigoj(igo)&.empty?
  end
end
