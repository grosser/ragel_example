class Parser
  %%{
    machine test_lexer;

    action s { s = p; puts "s#{p}" }
    action e { e = p; puts "e#{p}" }
    action captured {
      puts "captured #{s} #{e}"
    }
    key_value = "a" %s ("b" | "x" "c")+ %e %captured;
    tags = ("x"+)? key_value;

    main := tags*;
  }%%

  def initialize(data)
    data = data
    eof = data.length
    %% write data;
    %% write init;
    %% write exec;
  end
end


Parser.new(ARGV.first)
