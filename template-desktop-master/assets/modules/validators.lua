local M = {}

local function has_upper(s) return s:find("%u") ~= nil end
local function has_lower(s) return s:find("%l") ~= nil end
local function has_digit(s) return s:find("%d") ~= nil end
local function has_symbol(s) return s:find("[%p]") ~= nil end

function M.email_ok(email)
	return email and email:match(".+@.+%..+") ~= nil
end

function M.password_ok(pw)
	if not pw or #pw < 8 then return false, "Min 8 characters" end
	if not has_upper(pw) then return false, "Add an uppercase letter" end
	if not has_lower(pw) then return false, "Add a lowercase letter" end
	if not has_digit(pw) then return false, "Add a number" end
	if not has_symbol(pw) then return false, "Add a symbol" end
	return true, ""
end

return M
