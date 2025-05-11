function TestConfirm()
 local msg = "Do you want to proceed?"
 local confirm_key = "r"
  
  -- Create the dynamic confirmation options with custom shortcut key
  local yes_label =  confirm_key .. "Yes"
  local no_label = "&No"  -- Keep "No" as the default option

  -- Combine the labels into the menu string
  local menu = yes_label .. "\n" .. no_label

  -- Call vim.fn.confirm with the dynamically created menu
  local choice = vim.fn.confirm(msg, menu, 1, "Question")

  -- Handle the user's choice
  if choice == 1 then
    print("You chose Yes")
  else
    print("You chose No")
  end
  -- local msg = "Do you want to continue?"
  -- local confirm_res = vim.fn.confirm(msg, '&Yes\n&No', 1, 'Question')
  -- if confirm_res == 1 then
  --   print("User confirmed.")
  -- else
  --   print("User cancelled.")
  -- end
end

-- function ConfirmTest()
--   local confirm_key = "j"  -- Custom key for Yes
--   local cancel_key = "n"   -- Custom key for No
--
--   -- Dynamically create the labels with custom shortcuts
--   local yes_label = "["..confirm_key.."] Yes"
--   local no_label = "["..cancel_key.."] No"
--
--   -- Combine labels into the menu string
--   local menu = yes_label .. "\n" .. no_label
--
--   -- Print the custom prompt
--   print("Do you want to proceed? Press '" .. confirm_key .. "' for Yes, '" .. cancel_key .. "' for No.")
--
--   -- Set key mappings to handle immediate input
--   vim.api.nvim_set_keymap('n', confirm_key, [[<Cmd>lua print("You chose Yes")<CR>]], { noremap = true, silent = true })
--   vim.api.nvim_set_keymap('n', cancel_key, [[<Cmd>lua print("You chose No")<CR>]], { noremap = true, silent = true })
--
--   -- You could also reset the keys if needed by running the following line (optional)
--   vim.api.nvim_del_keymap('n', confirm_key)
--   vim.api.nvim_del_keymap('n', cancel_key)
--   -- local confirm = "j"
--   -- local msg = "Do you want to continue?"
--   -- local confirm_res = vim.fn.confirm(msg, '&Yes\n&No', 1, 'Question')
--   -- if confirm_res == 1 then
--   --   print("User confirmed.")
--   -- else
--   --   print("User cancelled.")
--   -- end
-- end

vim.api.nvim_create_user_command('TestConfirm', TestConfirm, {})

