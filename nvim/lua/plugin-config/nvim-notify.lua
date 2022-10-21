local status, project = pcall(require, "notify")
if not status then
  vim.notify("没有找到 nvim-notify")
  return
end

project.setup({
  background_colour = "#000000",
})

vim.notify = project
