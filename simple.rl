class Parser
  %%{
    machine test_lexer;

    action s { s = p; puts "s#{p}" }
    action e { captured << data[s...p]; puts "e#{p}" }
    action captured {
      puts "captured #{captured.inspect}"
      captured.clear
    }
    action hello { puts "hello" }

    word = "a"+;
    value = (word | (space word))+ %hello;
    key_value = '#' "public" >s %e space+ value >s %e %captured;
    tags = ((space+)? key_value)*;

    main := tags;
  }%%

  def initialize(data)
    data = data
    eof = data.length
    captured = []
    %% write data;
    %% write init;
    %% write exec;
  end
end


Parser.new(ARGV.first)
