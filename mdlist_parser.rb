
# line 1 "mdlist_parser.rl"
class MDListParser
  
# line 10 "mdlist_parser.rl"


  def initialize(data)
    eof = data.length
    
# line 12 "mdlist_parser.rb"
class << self
	attr_accessor :_test_lexer_actions
	private :_test_lexer_actions, :_test_lexer_actions=
end
self._test_lexer_actions = [
	0, 1, 0, 1, 1, 1, 2
]

class << self
	attr_accessor :_test_lexer_key_offsets
	private :_test_lexer_key_offsets, :_test_lexer_key_offsets=
end
self._test_lexer_key_offsets = [
	0, 0
]

class << self
	attr_accessor :_test_lexer_trans_keys
	private :_test_lexer_trans_keys, :_test_lexer_trans_keys=
end
self._test_lexer_trans_keys = [
	49, 57, 0
]

class << self
	attr_accessor :_test_lexer_single_lengths
	private :_test_lexer_single_lengths, :_test_lexer_single_lengths=
end
self._test_lexer_single_lengths = [
	0, 0
]

class << self
	attr_accessor :_test_lexer_range_lengths
	private :_test_lexer_range_lengths, :_test_lexer_range_lengths=
end
self._test_lexer_range_lengths = [
	0, 1
]

class << self
	attr_accessor :_test_lexer_index_offsets
	private :_test_lexer_index_offsets, :_test_lexer_index_offsets=
end
self._test_lexer_index_offsets = [
	0, 0
]

class << self
	attr_accessor :_test_lexer_trans_targs
	private :_test_lexer_trans_targs, :_test_lexer_trans_targs=
end
self._test_lexer_trans_targs = [
	1, 0, 0
]

class << self
	attr_accessor :_test_lexer_trans_actions
	private :_test_lexer_trans_actions, :_test_lexer_trans_actions=
end
self._test_lexer_trans_actions = [
	5, 0, 0
]

class << self
	attr_accessor :_test_lexer_to_state_actions
	private :_test_lexer_to_state_actions, :_test_lexer_to_state_actions=
end
self._test_lexer_to_state_actions = [
	0, 1
]

class << self
	attr_accessor :_test_lexer_from_state_actions
	private :_test_lexer_from_state_actions, :_test_lexer_from_state_actions=
end
self._test_lexer_from_state_actions = [
	0, 3
]

class << self
	attr_accessor :test_lexer_start
end
self.test_lexer_start = 1;
class << self
	attr_accessor :test_lexer_first_final
end
self.test_lexer_first_final = 1;
class << self
	attr_accessor :test_lexer_error
end
self.test_lexer_error = 0;

class << self
	attr_accessor :test_lexer_en_main
end
self.test_lexer_en_main = 1;


# line 15 "mdlist_parser.rl"
    
# line 114 "mdlist_parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = test_lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 16 "mdlist_parser.rl"
    
# line 126 "mdlist_parser.rb"
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
	_acts = _test_lexer_from_state_actions[cs]
	_nacts = _test_lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _test_lexer_actions[_acts - 1]
			when 1 then
# line 1 "NONE"
		begin
ts = p
		end
# line 160 "mdlist_parser.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
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
	cs = _test_lexer_trans_targs[_trans]
	if _test_lexer_trans_actions[_trans] != 0
		_acts = _test_lexer_trans_actions[_trans]
		_nacts = _test_lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _test_lexer_actions[_acts - 1]
when 2 then
# line 8 "mdlist_parser.rl"
		begin
te = p+1
 begin  puts 2  end
		end
# line 230 "mdlist_parser.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _test_lexer_to_state_actions[cs]
	_nacts = _test_lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _test_lexer_actions[_acts - 1]
when 0 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 250 "mdlist_parser.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
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

# line 17 "mdlist_parser.rl"
  end
end



