return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = '~/git/wiki',
        syntax = 'markdown',
        ext = '.md',
      },
    }

    -- Pretend vimwiki supports multiple diaries
    function ORDINAL(n)
      local ordinal, digit = {"st", "nd", "rd"}, string.sub(n, -1)
      if tonumber(digit) > 0 and tonumber(digit) <= 3 and string.sub(n,-2) ~= 11 and string.sub(n,-2) ~= 12 and string.sub(n,-2) ~= 13 then
        return n .. ordinal[tonumber(digit)]
      else
        return n .. "th"
      end
    end

    vim.keymap.set("n", "<leader>di", function()
      local date = os.date("*t")
      local formatted_date = os.date("%b ") .. ORDINAL(date.day) .. os.date(", %Y")
      local filename = vim.fn.expand("%:t:r")
      local vimwiki_entry = string.format("[%s](%s-%s)", formatted_date, filename, formatted_date)

      -- Insert the Vimwiki link
      vim.api.nvim_put({ vimwiki_entry }, "", true, true)
      vim.api.nvim_command('write')

      -- Move to beginning of line and follow the link
      vim.cmd("normal! F[")
      vim.cmd("VimwikiFollowLink")

      -- After opening the new file, insert the title
      vim.schedule(function()
        local title = string.format("# %s - %s", filename, formatted_date)
        vim.api.nvim_put({ title, "\t- " }, "c", true, true)  -- Insert title and tab-hyphen line below it
      end)
    end, { desc = "Insert formatted date link for Vimwiki, follow it, and set title" })
  end,

}
