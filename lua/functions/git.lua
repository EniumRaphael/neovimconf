local git = {}

function git.commit_with_message()
    local commit_msg = vim.fn.input('Enter commit message: ')
    if #commit_msg == 0 then
        print("Commit message cannot be empty!")
        return
    end
    vim.fn.system('git commit -m ' .. vim.fn.shellescape(commit_msg))
    if vim.v.shell_error == 0 then
        print("Changes committed successfully.")
    else
        print("Failed to commit changes.")
    end
end

function git.adding_files()
    local files = vim.fn.input('Enter files to add: ')
    if #files == 0 then
        return
    end
    vim.fn.system('git add ' .. vim.fn.shellescape(files))
    if vim.v.shell_error == 0 then
        print("Files added successfully.")
    else
        print("Failed to add the files.")
    end
end

function git.status_repo()
    local status_list = vim.fn.systemlist('git status -s')

    local modified_staged = {}
    local modified_unstaged = {}
    local added_staged = {}
    local added_unstaged = {}
    local deleted_staged = {}
    local deleted_unstaged = {}
    local renamed_staged = {}
    local renamed_unstaged = {}

    for _, line in ipairs(status_list) do
        if line:sub(1, 2) == 'M ' then
            table.insert(modified_staged, line:sub(4))
        elseif line:sub(1, 2) == ' M' then
            table.insert(modified_unstaged, line:sub(4))
        elseif line:sub(1, 2) == 'A ' then
            table.insert(added_staged, line:sub(4))
        elseif line:sub(1, 2) == ' A' then
            table.insert(added_unstaged, line:sub(4))
        elseif line:sub(1, 2) == 'D ' then
            table.insert(deleted_staged, line:sub(4))
        elseif line:sub(1, 2) == ' D' then
            table.insert(deleted_unstaged, line:sub(4))
        elseif line:sub(1, 2) == 'R ' then
            table.insert(renamed_staged, line:sub(4))
        elseif line:sub(1, 2) == ' R' then
            table.insert(renamed_unstaged, line:sub(4))
        end
    end

    print(">  Staged Files:")
    if #modified_staged > 0 then
        print("- Modified:")
        print(table.concat(modified_staged, "\n"))
    end
    if #added_staged > 0 then
        print("- Added:")
        print(table.concat(added_staged, "\n"))
    end
    if #deleted_staged > 0 then
        print("- Deleted:")
        print(table.concat(deleted_staged, "\n"))
    end
    if #renamed_staged > 0 then
        print("- Renamed:")
        print(table.concat(renamed_staged, "\n"))
    end

    print(">  Unstaged Files")
    if #modified_unstaged > 0 then
        print("- Modified:")
        print(table.concat(modified_unstaged, "\n"))
    end
    if #added_unstaged > 0 then
        print("- Added:")
        print(table.concat(added_unstaged, "\n"))
    end
    if #deleted_unstaged > 0 then
        print("- Deleted but Unstaged Files:")
        print(table.concat(deleted_unstaged, "\n"))
    end
    if #renamed_unstaged > 0 then
        print("- Renamed but Unstaged Files:")
        print(table.concat(renamed_unstaged, "\n"))
    end
end

return git
