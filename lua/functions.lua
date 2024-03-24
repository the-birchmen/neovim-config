-- Function for toggling set spell
function ToggleSpell(scope)
  return function()
    scope.spell = not scope.spell
    vim.cmd 'redraw'
    print('spell is ' .. tostring(scope.spell))
  end
end
