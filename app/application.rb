class Application

  def call(env)
    resp = Rack::Response.new
    
    num_1 = Kernel.rand 
    num_2 = Kernel.rand 
    num_3 = Kernel.rand
    
    resp.write "#{num_1}\n"
     resp.write "#{num_2}\n"
      resp.write "#{num_3}\n"
    
    if num_1=="tic" && num_2 =="tac" num_3 == "toe" 
      resp.write "You Win"
    else     
      resp.write "You Lose"
    end 

    resp.finish
  end

end
