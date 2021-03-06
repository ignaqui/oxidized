class WEOS < Oxidized::Model

  #Westell WEOS
  
  prompt /^(\s[\w.@-]+[#>]\s?)$/

  cmd :all do |cfg|
    cfg.each_line.to_a[1..-2].join
  end

  cmd 'show running-config' do |cfg|
    cfg
  end

  cfg :telnet do
    username /login:/
    password /assword:/
    post_login 'cli more disable'
    pre_logout 'logout'
  end

end
