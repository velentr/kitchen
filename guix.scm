(use-modules (gnu packages rails)
             (gnu packages ruby)
             (guix build-system ruby)
             (guix gexp)
             (guix git)
             ((guix licenses) #:prefix license:)
             (guix packages))

(package
 (name "kitchen")
 (version "0")
 (source (git-checkout (url (dirname (current-filename)))))
 (build-system ruby-build-system)
 (arguments
  (list #:tests? #f))  ;; I haven't written any real tests yet
 (propagated-inputs
  (list ruby-2.7 ruby-byebug ruby-listen ruby-kramdown ruby-puma ruby-rails
        ruby-sqlite3 ruby-tzinfo-data))
 (native-inputs (list ruby-solargraph))  ;; for LSP
 (synopsis "Personal recipe tracker")
 (description "Kitchen is a personal recipe/cooking tracker that aims to be a
self-hosted way of collecting your favorite recipes and how often you cook
them.")
 (home-page "https://github.com/velentr/kitchen")
 (license license:expat))
