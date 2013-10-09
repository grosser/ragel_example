
# line 1 "mdlist_parser.rl"
class MDListParser
  
# line 37 "mdlist_parser.rl"


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
    
# line 51 "mdlist_parser.rb"
class << self
	attr_accessor :_test_lexer_actions
	private :_test_lexer_actions, :_test_lexer_actions=
end
self._test_lexer_actions = [
	0, 1, 0, 1, 1, 2, 0, 1
]

class << self
	attr_accessor :_test_lexer_key_offsets
	private :_test_lexer_key_offsets, :_test_lexer_key_offsets=
end
self._test_lexer_key_offsets = [
	0, 0, 4, 10, 11, 12, 13, 14, 
	15, 16, 17, 20, 27, 32, 39, 40, 
	41, 42, 43, 45, 46, 47, 48, 49, 
	50, 51, 52, 53, 54, 55, 56, 57, 
	58, 59, 60, 61, 62, 63, 64, 65, 
	66, 67, 68, 70, 71, 75, 76, 80, 
	85
]

class << self
	attr_accessor :_test_lexer_trans_keys
	private :_test_lexer_trans_keys, :_test_lexer_trans_keys=
end
self._test_lexer_trans_keys = [
	32, 35, 9, 13, 97, 103, 112, 114, 
	115, 116, 115, 115, 105, 103, 110, 101, 
	101, 32, 9, 13, 13, 32, 35, 9, 
	10, 11, 12, 13, 32, 35, 9, 10, 
	13, 32, 35, 9, 10, 11, 12, 114, 
	111, 117, 112, 114, 117, 105, 111, 114, 
	105, 116, 121, 98, 108, 105, 99, 101, 
	113, 117, 101, 115, 116, 101, 114, 116, 
	97, 116, 117, 115, 97, 121, 103, 32, 
	115, 9, 13, 112, 32, 35, 9, 13, 
	13, 32, 35, 9, 10, 13, 32, 35, 
	9, 10, 11, 12, 0
]

class << self
	attr_accessor :_test_lexer_single_lengths
	private :_test_lexer_single_lengths, :_test_lexer_single_lengths=
end
self._test_lexer_single_lengths = [
	0, 2, 6, 1, 1, 1, 1, 1, 
	1, 1, 1, 3, 3, 3, 1, 1, 
	1, 1, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 2, 1, 2, 1, 2, 3, 
	3
]

class << self
	attr_accessor :_test_lexer_range_lengths
	private :_test_lexer_range_lengths, :_test_lexer_range_lengths=
end
self._test_lexer_range_lengths = [
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 2, 1, 2, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 1, 1, 
	2
]

class << self
	attr_accessor :_test_lexer_index_offsets
	private :_test_lexer_index_offsets, :_test_lexer_index_offsets=
end
self._test_lexer_index_offsets = [
	0, 0, 4, 11, 13, 15, 17, 19, 
	21, 23, 25, 28, 34, 39, 45, 47, 
	49, 51, 53, 56, 58, 60, 62, 64, 
	66, 68, 70, 72, 74, 76, 78, 80, 
	82, 84, 86, 88, 90, 92, 94, 96, 
	98, 100, 102, 105, 107, 111, 113, 117, 
	122
]

class << self
	attr_accessor :_test_lexer_indicies
	private :_test_lexer_indicies, :_test_lexer_indicies=
end
self._test_lexer_indicies = [
	0, 2, 0, 1, 3, 4, 5, 6, 
	7, 8, 1, 9, 1, 10, 1, 11, 
	1, 12, 1, 13, 1, 14, 1, 15, 
	1, 16, 16, 1, 18, 18, 1, 18, 
	19, 17, 21, 21, 2, 21, 20, 22, 
	22, 2, 22, 19, 17, 23, 1, 24, 
	1, 25, 1, 15, 1, 26, 27, 1, 
	28, 1, 29, 1, 30, 1, 31, 1, 
	32, 1, 15, 1, 33, 1, 34, 1, 
	35, 1, 15, 1, 36, 1, 37, 1, 
	38, 1, 39, 1, 40, 1, 41, 1, 
	42, 1, 15, 1, 43, 1, 44, 1, 
	45, 1, 46, 1, 15, 1, 47, 48, 
	1, 49, 1, 16, 15, 16, 1, 14, 
	1, 0, 2, 0, 1, 21, 21, 2, 
	21, 20, 22, 22, 2, 22, 19, 17, 
	0
]

class << self
	attr_accessor :_test_lexer_trans_targs
	private :_test_lexer_trans_targs, :_test_lexer_trans_targs=
end
self._test_lexer_trans_targs = [
	1, 0, 2, 3, 14, 18, 29, 37, 
	42, 4, 5, 6, 7, 8, 9, 10, 
	11, 47, 11, 48, 47, 12, 13, 15, 
	16, 17, 19, 25, 20, 21, 22, 23, 
	24, 26, 27, 28, 30, 31, 32, 33, 
	34, 35, 36, 38, 39, 40, 41, 43, 
	45, 44
]

class << self
	attr_accessor :_test_lexer_trans_actions
	private :_test_lexer_trans_actions, :_test_lexer_trans_actions=
end
self._test_lexer_trans_actions = [
	0, 0, 0, 1, 1, 1, 1, 1, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	3, 5, 1, 5, 3, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :test_lexer_start
end
self.test_lexer_start = 46;
class << self
	attr_accessor :test_lexer_first_final
end
self.test_lexer_first_final = 46;
class << self
	attr_accessor :test_lexer_error
end
self.test_lexer_error = 0;

class << self
	attr_accessor :test_lexer_en_main
end
self.test_lexer_en_main = 46;


# line 81 "mdlist_parser.rl"
    
# line 208 "mdlist_parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = test_lexer_start
end

# line 82 "mdlist_parser.rl"
    
# line 217 "mdlist_parser.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _test_lexer_key_offsets[cs]
	_trans = _test_lexer_index_offsets[cs]
	_klen = _test_lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _test_lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _test_lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _test_lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _test_lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _test_lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _test_lexer_indicies[_trans]
	cs = _test_lexer_trans_targs[_trans]
	if _test_lexer_trans_actions[_trans] != 0
		_acts = _test_lexer_trans_actions[_trans]
		_nacts = _test_lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _test_lexer_actions[_acts - 1]
when 0 then
# line 5 "mdlist_parser.rl"
		begin
 s = p; puts "s#{p}" 		end
when 1 then
# line 7 "mdlist_parser.rl"
		begin
 finish(s, p); puts "e#{p}" 		end
# line 306 "mdlist_parser.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 83 "mdlist_parser.rl"
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



