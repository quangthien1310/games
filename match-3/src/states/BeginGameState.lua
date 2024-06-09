BeginGameState = Classs{__includes = BaseState}

function BeginGameState:init()
    
    self.transitionAlpha = 1

    self.board = Board(VIRTUAL_WIDTH - 272, 16)

    self.levelLabelY = -64
end