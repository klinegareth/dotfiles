" Author: Kline Gareth

lua << EOF
package.loaded['george'] = nil
package.loaded['george.highlights'] = nil
package.loaded['george.Treesitter'] = nil
package.loaded['george.markdown'] = nil
package.loaded['george.Whichkey'] = nil
package.loaded['george.Git'] = nil
package.loaded['george.LSP'] = nil
package.loaded['george.Quickscope'] = nil
package.loaded['george.Telescope'] = nil
package.loaded['george.NvimTree'] = nil
package.loaded['george.Lir'] = nil
package.loaded['george.Buffer'] = nil
package.loaded['george.StatusLine'] = nil
package.loaded['george.IndentBlankline'] = nil
package.loaded['george.Dashboard'] = nil
package.loaded['george.DiffView'] = nil
package.loaded['george.Bookmarks'] = nil
package.loaded['george.Bqf'] = nil
package.loaded['george.Cmp'] = nil
package.loaded['george.SymbolOutline'] = nil
package.loaded['george.Misc'] = nil

require("george")
EOF
