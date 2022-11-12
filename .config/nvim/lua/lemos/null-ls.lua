local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  print ("Unable to load 'null-ls' plugin")
  return
end

null_ls.setup({
  --debug = true,
  sources = {
    null_ls.builtins.code_actions.eslint_d,       -- ESLint suggestion code_actions_eslint_d
    null_ls.builtins.formatting.prettierd,        -- prettier, as a daemon, for ludicrous formatting speed.
    null_ls.builtins.formatting.sqlfluff.with({
        extra_args = { "--dialect", "sqlite" },
    }),
    null_ls.builtins.formatting.shfmt,            -- A shell parser, formatter, and interpreter
    null_ls.builtins.diagnostics.eslint_d,        -- ESLint diagnostics
    null_ls.builtins.diagnostics.actionlint,      -- static checker for GitHub Actions workflow files
    null_ls.builtins.diagnostics.sqlfluff.with({  -- SQL linter and auto-formatter for Humans
        extra_args = { "--dialect", "sqlite" },   -- note that you must specify a dialect.
    }),                                           -- more information on https://docs.sqlfluff.com/en/stable/configuration.html
  }
})
