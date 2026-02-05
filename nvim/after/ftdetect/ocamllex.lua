vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'ocamllex', 'ocamlyacc' },
  callback = function()
    vim.bo.commentstring = '(* %s *)'
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
  end,
})
