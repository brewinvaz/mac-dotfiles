local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
 return
end

-- Configuration options
-- https://github.com/akinsho/bufferline.nvim/blob/main/doc/bufferline.txt
bufferline.setup({
  options = {
    numbers = 'none',
    close_command = 'Bdelete! %d',
    right_mouse_command = 'Bdelete! %d',
    left_mouse_command = 'buffer %d',
    middle_mouse_command = nil,
    indicator = {
      styel = 'icon',
      icon = '▎',
    },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 30,
    max_prefix_length = 30,
    tab_size = 21,
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return ' ' .. icon .. count
    end,
    offsets = { { filetype = 'NvimTree', text = 'File Explorer', padding = 1 } },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = 'thin',
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  },
  highlights = {
    fill = {
      bg = { attribute = 'bg', highlight = 'TabLine' },
    },
    buffer_visible = {
      fg = { attribute = 'fg', highlight = 'fill' },
    },
    close_button_visible = {
      fg = { attribute = 'fg', highlight = 'fill' },
    },
    tab_close = {
      bg = { attribute = 'bg', highlight = 'TabLine' },
    },
  }
})
