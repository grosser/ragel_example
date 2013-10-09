class MDListParser
  %%{
    machine test_lexer;

    action s { s = p; puts "s#{p}" }
    action sx { s = p; puts "s#{p}" }
    action e { finish(s, p); puts "e#{p}" }
    action capture_shortcut {
      puts "capture_shortcut"
      emit @captured[0].downcase
    }
    action capture_key_value {
      puts "capture_key_value"
      emit @captured[0].downcase, @captured[1]
    }

    word = [^# \t\n\r]+;
    non_newline_whitespace = [ \t\r];
    consecutive_newlines = "\n" (non_newline_whitespace+)? "\n";
    property_key =
      "public" | "assignee" | "requester" | "group" |
      "status" | "priority" | "type" | "tags" | "tag";
    shortcut_key =
      "open" | "pending" | "solved" | "hold" | "on-hold" | # status
      "low" | "normal" | "urgent" | "high" |               # priority
      "problem" | "question" | "incident" | "task" |       # type
      "note" | "public";                                   # visibility
    value = (word | (space+ word))+;
    whitespace = space; #(!consecutive_newlines space);
    key_value = '#' property_key >s %e whitespace+ value >s %e %capture_key_value;
    shortcut = '#' shortcut_key >s %e %capture_shortcut;
    tag = key_value;# # shortcut; # key_value;# |
    tags = ((whitespace+)? tag)*;

    main := tags;
  }%%

=begin
  # encoding: utf-8

  grammar MailAPI

    rule mail
      tags? consecutive_newlines? message {
        def tags
          elements[0] && elements[0].to_array
        end

        def stripped_text
          if text = elements[2]
            result = text.text_value.to_s
            result.strip!
            result
          end
        end
      }
    end

    rule tags
      ((whitespace+)? tag)* {
        def to_array
          array = []
          elements.each do |element|
            if element.respond_to?(:tag)
              array << element.tag.to_array
            end
          end
          array
        end
      }
    end
  end
=end

  def initialize(data)
    @data = data
    eof = @data.length
    @captured = []
    %% write data;
    %% write init;
    %% write exec;
  end

  def emit(*args)
    @captured.clear
    puts args.inspect
  end

  private

  def finish(s, p)
    @captured << @data[s...p]
  end
end



