class CmdWin < Window_Command
  
  def initialize
    super 0, 0
  end
  
  def make_command_list
    main
  end
  
  def window_width
    return 0
  end
  
  def window_height
    return 0
  end
  
  def main
    add_command("cancel",  :cancel)
  end
  
end
