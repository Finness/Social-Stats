class Window_MenuCommand < Window_Command
  alias social_stats_create add_original_commands
  def add_original_commands
    add_command("Social Stats", :socialstats)
  end
end

class Scene_Menu
  alias social_stats_menu create_command_window
  def create_command_window
    social_stats_menu
    @command_window.set_handler(:socialstats,      method(:command_socialstats))
  end
     
  def command_socialstats
    SceneManager.call(Scene_SocialStats)
  end
end