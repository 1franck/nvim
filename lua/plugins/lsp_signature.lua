-- https://github.com/ray-x/lsp_signature.nvim
return {
    {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        config = function() require "lsp_signature".on_attach() end,
    }
}
