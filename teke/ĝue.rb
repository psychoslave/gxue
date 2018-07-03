module Ĝue

  # Eĉ se tra la sekva +method_missing+ difino +sendu+ jam estos aliaso de
  # +send+, la sekvanta ordono estas necesa por uzi ĝin en +method_missing+ mem
  # sen krei senfinan rikuran vokon
  alias sendu send

  # Farenda: komprenu kial +alias mistrafe method_missing+ ne sufiĉas
  def method_missing(ago, *lokatoj, &bloko)
    mistrafe(ago, *lokatoj, &bloko)
  end

  # Pravas trovi taŭga identigila vokado por la provizitaj kunvokatoj
  def mistrafe(ago, *lokatoj, &bloko)
    case ago
    when /u$/
    # ivu agon ? sendu unua-kongruige-agon je *lokatoj plu &bloko : super
      iva?(ago) ? sendu(kongruigoj(ago).first, *lokatoj, &bloko) : super
    else
      super
    end
  end

  # Provizas ojon de vokeblaj agoj, kiuj kongruas kun la nomo de +ago+
  #
  # Ekzemple se oni difinis 'sendi', `kongruigoj('sendu`) provizos
  # `[:sendi, :send]`
  def kongruigoj(ago)
    celo = ago.to_s.chop
    ebloj = %w(e i a aj o oj).map{|finaĵo| "#{celo}#{finaĵo}"}.push(celo)
    ebloj.select{|ero| eval("defined? #{ero}") == 'method'}
  end

  alias iva? respond_to?
  def iva?(ago, pleninklude=false)
    ago.to_s =~ /u$/ ? !kongruigoj(ago)&.empty? : super
  end
end
