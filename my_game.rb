require './game.rb'
require './scene.rb'
require './question.rb'
require './answer.rb'

Game.new do

  scene :road, beginning: true do
    question "Which way do you turn?" do
      answer "Turn left", :cliff
      answer "Turn right", :cave
    end
  end

  scene :cave do
    question "Do you enter the cave?" do
      answer "Yes, I enter the cave", :tunnel
      answer "No I go past the cave", :cliff
    end
  end

  scene :tunnel do
    question "What do you do?" do
      answer "I go into the tunnel", :treasure
      answer "I keep going past the tunnel", :bear
    end
  end

  scene :treasure, ending: true
  scene :bear, ending: true
  scene :cliff, ending: true

end
