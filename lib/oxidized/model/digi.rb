class DIGI < Oxidized::Model
# DIGI LTE modems WR-31 and WR-44, telnet input

  prompt /^\r*([\w.@()-\/]+[#>]\s?)$/

  cmd :all do |cfg|
    cfg.cut_both
  end

  cmd 'type config.da0' do |cfg|
    cfg
  end

  cfg :telnet do
    username /Username:/
    password /Password:/
    pre_logout 'exit'
  end
end
