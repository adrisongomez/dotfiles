lua << EOF
local nvim_lsp = require("lspconfig")

servers = {
    "pyright",
    "graphql",
    "bashls",
    "tsserver",
}

for key, value in pairs(servers) do
    nvim_lsp[value].setup{
        on_attach = function(client)
            client.resolved_capabilities.document_formatting = false
        end
    }
end

-- Deno setup
nvim_lsp.denols.setup{
    cmd = {"deno", "lsp"}
    filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"}
    handlers = {
        ["TextDocument/definition"] = <function 1>,
        ["TextDocument/references"] = <function 2>
    }
    init_options = {
        enable = true,
        lint = false,
        unstable = false
    }
    root_dir = root_pattern("deno.json", "deno.jsonc", "package.json", "tsconfig.json", ".git")
}

-- DIAGNOSTIC LANGUAGE SERVER

local filetypes = {
    typescript = 'eslint',
    typescriptreact = 'eslint'
}

local linters = {
    eslint = {
        sourceName = "eslint",
        command = "eslint_d",
        rootPatterns = {".eslintrc.js", "package.json"},
        debounce = 100,
        args = {"--stdin", "--stdin", "filepath", "--format", "json"},
        parseJson = {
            errorsRoot = "[0].messages",
            line = "line",
            column = "column",
            endColumn = "endColumn",
            endLine = "endLine",
            message = "${message} [${ruleId}]",
            security = "severity"
        },
        securities = {[2] = "error", [1] = "warning"}
    }
}

local formatters = { 
    prettier = {command = "prettier", args = {"--stdin-filepath", "%filepath"}}
}

local formatFiletypes = {
    typescript = "prettier",
    typescriptreact = "prettier"
}

nvim_lsp.diagnosticls.setup {
    on_attach = on_attach,
    filetypes = vim.tbl_keys(filetypes),
    init_options = {
        filetypes = filetypes,
        linters = linters,
        formatters = formatters,
        formatFiletypes = formatFiletypes
    }
}

local file_extensions = { "*.py", "*.js", "*.jsx", "*.ts", "*.tsx", "*.graphql" }

for key, value in pairs(file_extensions) do
    vim.api.nvim_command( 
        string.format("autocmd BufWritePre ".. value .." lua vim.lsp.buf.formatting_sync(nil, 100)")
    )
end

EOF

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

nnoremap <silent> gd <cmd> lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd> lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>  lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd> lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd> lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd> lua vim.lsp.buf.signature_help()<CR> 
nnoremap <silent> <C-n> <cmd> lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd> lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <space>fo <cmd> lua vim.lsp.buf.formatting()<CR>

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.graphql lua vim.lsp.buf.formatting_sync(nil, 100)
