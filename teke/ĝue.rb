require 'byebug'
module Ĝue
  def method_missing(igo, *args, &block)
    case igo
    when /u$/
      celo = igo.to_s.sub(/u$/, 'i').to_s
      send(celo)
    else
      super
    end
  end
end
