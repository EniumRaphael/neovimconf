local alias = {}

function alias.setup()

vim.cmd("command! W :w")

vim.cmd("command! Q :q")

vim.cmd("command! WA :wa")
vim.cmd("command! Wa :wa")

vim.cmd("command! QA :qa")
vim.cmd("command! Qa :qa")

vim.cmd("command! WQ :wq")
vim.cmd("command! Wq :wq")

vim.cmd("command! XA :xa")
vim.cmd("command! Xa :xa")

end

return alias
