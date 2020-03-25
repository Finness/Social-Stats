class Scene_SocialStats < Scene_Base
     
  def start
    create_scrolling_image
    @background = Plane.new
    @background.z = 112
    @background.blend_type = 0
    @background.bitmap = Cache.system('Status/Social_status1') #calls for the menu background,
    @actor = Plane.new
    @actor.z = 114
    @actor.blend_type = 0
    @actor.bitmap = Cache.system('Status/Actor1') #calls for actor portrait.
    @status2 = Plane.new
    @status2.z = 115
    @status2.blend_type = 0
    @status2.bitmap = Cache.system('Status/Social_status2') #calls for the 2nd part of the hud.
    @status3 = Plane.new
    @status3.z = 116
    @status3.blend_type = 0
    @status3.bitmap = Cache.system('Status/Social_status3') # calls for the "social stats" image.
    
    @academics = Sprite.new
    @academics.z = 117
    @academics.blend_type = 0
    if $game_variables[1] <= 20 #first variable, used to manage academics level.
     @academics.bitmap = Cache.system('Status/Social_status_academics1') #draws the level of academics given by the variable.
   elsif $game_variables[1] <= 40
     @academics.bitmap = Cache.system('Status/Social_status_academics2') # level 2
   elsif $game_variables[1] <= 60
     @academics.bitmap = Cache.system('Status/Social_status_academics3') # level 3
   elsif $game_variables[1] <= 80
     @academics.bitmap = Cache.system('Status/Social_status_academics4') # level 4
   elsif $game_variables[1] <= 100
     @academics.bitmap = Cache.system('Status/Social_status_academics5') #level max
   elsif $game_variables[1] >= 100
     @academics.bitmap = Cache.system('Status/Social_status_academics5') # draw level 5 when beyond max, can be customized to show a level 6
   end #all said above aplies aswell to the other stats.
   
    @charm = Sprite.new
    @charm.z = 118
    @charm.blend_type = 0
    if $game_variables[2] <= 20 # second variable, used for charm.
     @charm.bitmap = Cache.system('Status/Social_status_charm1')
   elsif $game_variables[2] <= 40
     @charm.bitmap = Cache.system('Status/Social_status_charm2')
   elsif $game_variables[2] <= 60
     @charm.bitmap = Cache.system('Status/Social_status_charm3')
   elsif $game_variables[2] <= 80
     @charm.bitmap = Cache.system('Status/Social_status_charm4')
   elsif $game_variables[2] <= 100
     @charm.bitmap = Cache.system('Status/Social_status_charm5')
   elsif $game_variables[2] >= 100
     @charm.bitmap = Cache.system('Status/Social_status_charm5')
   end
   
    @guts = Sprite.new
    @guts.z = 119
    @guts.blend_type = 0
    if $game_variables[3] <= 20 #third variable, used for guts.
     @guts.bitmap = Cache.system('Status/Social_status_guts1')
   elsif $game_variables[3] <= 40
     @guts.bitmap = Cache.system('Status/Social_status_guts2')
   elsif $game_variables[3] <= 60
     @guts.bitmap = Cache.system('Status/Social_status_guts3')
   elsif $game_variables[3] <= 80
     @guts.bitmap = Cache.system('Status/Social_status_guts4')
   elsif $game_variables[3] <= 100
     @guts.bitmap = Cache.system('Status/Social_status_guts5')
   elsif $game_variables[3] >= 100
     @guts.bitmap = Cache.system('Status/Social_status_guts5')
   end
   
   @CmdWin = CmdWin.new # calls for the cancel window
   @CmdWin.set_handler(:cancel,   method(:close_status))
end

  def close_status
      #@actor.dispose
      #@status2.dispose
      #@academics.dispose
      #@charm.dispose
      #@guts.dispose
      SceneManager.return
      #return
    end
  
def create_scrolling_image
   @image_scroll = Plane.new
   @image_scroll.z = 114
   @image_scroll.blend_type = 0
   @image_scroll.bitmap = Cache.system('Status/Actor1Back') # creates the background portrait, and loops a scroll for it
end
   def update
   super
   if @image_scroll.oy != -805
     @image_scroll.oy += 1
   if @status3.ox != -805 # same aplies for the "social stats" image.
      @status3.ox += 1
   end
 end

end
end

class Scene_Base
    def dispose_main_viewport
    #@viewport.dispose
  end
end