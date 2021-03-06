
# line 1 "simple.rl"
class Parser
  
# line 14 "simple.rl"


  def initialize(data)
    data = data
    eof = data.length
    
# line 13 "simple.rb"
class << self
	attr_accessor :_test_lexer_actions
	private :_test_lexer_actions, :_test_lexer_actions=
end
self._test_lexer_actions = [
	0, 1, 0, 2, 1, 2
]

class << self
	attr_accessor :_test_lexer_key_offsets
	private :_test_lexer_key_offsets, :_test_lexer_key_offsets=
end
self._test_lexer_key_offsets = [
	0, 0, 2, 5, 7, 8, 10
]

class << self
	attr_accessor :_test_lexer_trans_keys
	private :_test_lexer_trans_keys, :_test_lexer_trans_keys=
end
self._test_lexer_trans_keys = [
	98, 120, 97, 99, 120, 97, 120, 99, 
	97, 120, 97, 98, 120, 0
]

class << self
	attr_accessor :_test_lexer_single_lengths
	private :_test_lexer_single_lengths, :_test_lexer_single_lengths=
end
self._test_lexer_single_lengths = [
	0, 2, 3, 2, 1, 2, 3
]

class << self
	attr_accessor :_test_lexer_range_lengths
	private :_test_lexer_range_lengths, :_test_lexer_range_lengths=
end
self._test_lexer_range_lengths = [
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_test_lexer_index_offsets
	private :_test_lexer_index_offsets, :_test_lexer_index_offsets=
end
self._test_lexer_index_offsets = [
	0, 0, 3, 7, 10, 12, 15
]

class << self
	attr_accessor :_test_lexer_indicies
	private :_test_lexer_indicies, :_test_lexer_indicies=
end
self._test_lexer_indicies = [
	0, 2, 1, 3, 4, 5, 1, 3, 
	5, 1, 4, 1, 3, 5, 1, 6, 
	4, 7, 1, 0
]

class << self
	attr_accessor :_test_lexer_trans_targs
	private :_test_lexer_trans_targs, :_test_lexer_trans_targs=
end
self._test_lexer_trans_targs = [
	6, 0, 4, 1, 6, 3, 1, 2
]

class << self
	attr_accessor :_test_lexer_trans_actions
	private :_test_lexer_trans_actions, :_test_lexer_trans_actions=
end
self._test_lexer_trans_actions = [
	1, 0, 1, 0, 0, 0, 3, 3
]

class << self
	attr_accessor :_test_lexer_eof_actions
	private :_test_lexer_eof_actions, :_test_lexer_eof_actions=
end
self._test_lexer_eof_actions = [
	0, 0, 0, 0, 0, 0, 3
]

class << self
	attr_accessor :test_lexer_start
end
self.test_lexer_start = 5;
class << self
	attr_accessor :test_lexer_first_final
end
self.test_lexer_first_final = 5;
class << self
	attr_accessor :test_lexer_error
end
self.test_lexer_error = 0;

class << self
	attr_accessor :test_lexer_en_main
end
self.test_lexer_en_main = 5;


# line 20 "simple.rl"
    
# line 118 "simple.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = test_lexer_start
end

# line 21 "simple.rl"
    
# line 127 "simple.rb"
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
# line 5 "simple.rl"
		begin
 s = p; puts "s#{p}" 		end
when 1 then
# line 6 "simple.rl"
		begin
 e = p; puts "e#{p}" 		end
when 2 then
# line 7 "simple.rl"
		begin

      puts "captured #{s} #{e}"
    		end
# line 222 "simple.rb"
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
	if p == eof
	__acts = _test_lexer_eof_actions[cs]
	__nacts =  _test_lexer_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _test_lexer_actions[__acts - 1]
when 1 then
# line 6 "simple.rl"
		begin
 e = p; puts "e#{p}" 		end
when 2 then
# line 7 "simple.rl"
		begin

      puts "captured #{s} #{e}"
    		end
# line 260 "simple.rb"
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 22 "simple.rl"
  end
end


Parser.new(ARGV.first)
