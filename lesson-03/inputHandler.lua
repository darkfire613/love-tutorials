local inputHandler = { actions = {} }

function inputHandler:addAction(key, command)
  self.actions[key] = command
end

return inputHandler
