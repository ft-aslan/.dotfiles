if true then
  return {}
end

return {
  "supermaven-inc/supermaven-nvim",
  event = "LazyFile",
  config = function()
    require("supermaven-nvim").setup({})
  end,
}
