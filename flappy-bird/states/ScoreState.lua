ScoreState = Class{__includes = BaseState}

local bronzeMedal = love.graphics.newImage('bronzemedal.png')
local silverMedal = love.graphics.newImage('silvermedal.png')
local goldMedal = love.graphics.newImage('goldmedal.png')

function ScoreState:enter(params)
    self.score = params.score
end

function ScoreState:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('play')
    end
end

function ScoreState:render()
    love.graphics.setFont(flappyFont)
    love.graphics.printf('You lost!', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)
    love.graphics.printf('Score: ' .. tostring(self.score), 0, 100, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('Press Enter to play again', 0, 160, VIRTUAL_WIDTH, 'center')

    if self.score >= 6 then
        love.graphics.draw(goldMedal, 10, 10, 0, .25, .25)
    elseif self.score >= 4 then
        love.graphics.draw(silverMedal, 10, 10, 0, .25, .25)
    elseif self.score >= 2 then
        love.graphics.draw(bronzeMedal, 10, 10, 0, .25, .25)
    end
end