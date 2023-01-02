if exists("g:loaded_vimux_brazil") || &cp
  finish
endif
let g:loaded_vimux_brazil = 1

command RunAllBrazilTests :call s:RunAllBazelTests()

function s:RunAllBrazilTests()
   call VimuxRunCommand("clear && " . "brazil-test-exec pytest")
endfunction

"function s:RunTargetBazelTests()
"   let file_name = @%
"   let top_level_target = split(system("bazel query " . file_name), ":")[0]
"   call VimuxRunCommand("clear && " . "bazel test " . top_level_target . ":all")
"endfunction

