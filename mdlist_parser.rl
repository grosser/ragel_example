class MDListParser  

  attr_accessor :lists

	%%{

	  machine test_lexer;

	  action MarkTaskStart { 
	    task_start = fpc  
	    lists_index += 1 
	    @lists[lists_index] = {:items => []}
	    item_index=-1    
	  }

	  action MarkTaskTitleStart { 
	    task_start = fpc  
	  }

	  action MarkTaskDescriptionStart { 
	    task_start = fpc
	    item_index=-1    
	  }

	  action IncrementTaskLevel { 
	    task_level += 1  
	  }

	  action TaskText {     
		if data[p]          
		    item_index += 1
			@lists[lists_index][:items] <<  { :type => task_item_type, :level => task_level, :title => data[task_start...p].pack('c*').strip, :description => ""}         
			task_level = 1
		end
	  } 

	  action TaskDescriptionText {     
		if data[p]          
			@lists[lists_index][:items][item_index][:description] = data[task_start...p].pack('c*').strip           
			task_level = 1
		end
	  }     
  
	  space_or_tab = " " | [\t];
	  indent_or_tab = "    " | [\t];  

	  task_header = "##" space_or_tab* "Tasks" space_or_tab* [\n];               
	  task_char = (digit+ '.' >{task_item_type = :ordered}) | ('-' >{task_item_type = :unordered}); 
	  task_title =  [^\n]+ [\n]; 
	  task_starter = indent_or_tab* @IncrementTaskLevel task_char;  
	  task_description_line =  ([^\n]+ - ^[##]) [\n]; 
	  task_description =  (task_description_line - task_header)+; 
	  #task_description =  (task_description_line)+; 
	  task_item =  task_starter space_or_tab* (task_title >MarkTaskTitleStart  %TaskText) (task_description*  >MarkTaskDescriptionStart %TaskDescriptionText);
	  task = (task_header >MarkTaskStart) . task_item*;      
                  
	  main := |*          
	    task+; 
	   *|;              

	}%%  
               
	def initialize(data) 
	  %% write data;  
	  data = data.unpack("c*") if(data.is_a?(String))
	  eof = data.length
	  @lists = []  
	  token_array = [] 
	  task_item_type = "" 
	  lists_index=-1 
	  task_level = 1
	  fpc = 0
	  fc = ""
	  %% write init;  
	  %% write exec;
	end     
                         
end
  


       