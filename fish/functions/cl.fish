function cl --wraps='cd && ls' --wraps='cd && ls && cd ' --wraps=cd\ \'\'\ \&\&\ ls
 cd "$argv" && ls ;
end
