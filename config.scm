(use-modules (gnu packages rails)
             (gnu packages ruby))

(packages->manifest
 (list ruby-2.7
       ruby-byebug
       ruby-listen
       ruby-kramdown
       ruby-rails
       ruby-sqlite3
       ruby-tzinfo-data
       ;; for lsp
       ruby-solargraph))
