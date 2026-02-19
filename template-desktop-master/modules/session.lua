local M = { user_id = nil, is_guest = false, email = nil }

local function gen_guest_id()
	return ("guest_%d_%d"):format(os.time(), math.random(100000, 999999))
end

function M.start_guest()
	M.user_id = gen_guest_id()
	M.is_guest = true
	M.email = nil
end

function M.login_hardcoded(email, password)
	if email == "test@example.com" and password == "Password123!" then
		M.user_id = "user_001"
		M.is_guest = false
		M.email = email
		return true
	end
	return false
end

return M
