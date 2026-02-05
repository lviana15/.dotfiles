require('config.set')
require('config.maps')
require('config.lazy')

vim.filetype.add({
  extension = {
    mll = 'ocamllex',
    mly = 'ocamlyacc',
  }
})
