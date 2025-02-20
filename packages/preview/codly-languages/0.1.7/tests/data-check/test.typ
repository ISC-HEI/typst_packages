#import "/lib.typ": *

#let base-languages = (
  "aarch64",
  "agda",
  "angular",
  "ansible",
  "apache",
  "apl",
  "awk",
  "bash",
  "c",
  "cairo",
  "clojure",
  "clojurescript",
  "cmake",
  "coffeescript",
  "cplusplus",
  "crystal",
  "csharp",
  "css",
  "cuda",
  "dart",
  "docker",
  "elixir",
  "elm",
  "emacs",
  "erlang",
  "fortran",
  "fsharp",
  "git",
  "go",
  "graphql",
  "groovy",
  "grpc",
  "handlebars",
  "haskell",
  "haxe",
  "html",
  "java",
  "javascript",
  "json",
  "julia",
  "kotlin",
  "latex",
  "less",
  "lisp",
  "lua",
  "markdown",
  "matlab",
  "mysql",
  "neovim",
  "nextflow",
  "nginx",
  "nim",
  "nix",
  "objectivec",
  "ocaml",
  "perl",
  "php",
  "postgresql",
  "powershell",
  "processing",
  "prolog",
  "purescript",
  "python",
  "r",
  "rails",
  "ruby",
  "rust",
  "sass",
  "scala",
  "solidity",
  "splunk",
  "sql",
  "sqlite",
  "ssh-config",
  "stylus",
  "svelte",
  "swift",
  "terraform",
  "tex",
  "text",
  "typescript",
  "typst",
  "uml",
  "vala",
  "vim",
  "visualbasic",
  "vyper",
  "wasm",
  "xml",
  "yaml",
  "zig",
)

#for lang in base-languages {
  if lang not in codly-languages.keys() {
    panic("warning: language " + lang + " not found in codly-languages")
  }
}

Found all base languages!


#let aliases = (
  "arm",
  "bash",
  "clj",
  "cljs",
  "coffee",
  "cpp",
  "cs",
  "cxx",
  "cu",
  "dockerfile",
  "erl",
  "ex",
  "fs",
  "golang",
  "hs",
  "html5",
  "jl",
  "js",
  "kt",
  "ml",
  "nixos",
  "nvim",
  "obj-c",
  "objc",
  "pl",
  "ps1",
  "py",
  "rb",
  "rs",
  "sc",
  "scss",
  "sh",
  "shell",
  "sol",
  "spl",
  "ssh",
  "styl",
  "tf",
  "ts",
  "txt",
  "typ",
  "typc",
  "typm",
  "vb",
  "vimscript",
  "yml"
)

#for lang in aliases {
  if lang not in codly-languages.keys() {
    panic("error: language " + lang + " not found in codly-languages")
  }
}

Found all language aliases!

#if codly-languages.keys().len() != base-languages.len() + aliases.len() {
    panic("error: language count is incorrect")
}

Language key count matches: #codly-languages.keys().len() keys.
