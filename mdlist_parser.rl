class MDListParser
  %%{
    machine test_lexer;

    integer = /[1-9]/;

    main := |*
      integer => { puts 2 };
     *|;
  }%%

  def initialize(data)
    eof = data.length
    %% write data;
    %% write init;
    %% write exec;
  end
end



