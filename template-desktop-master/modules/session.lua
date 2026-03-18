local M = {}

M.is_guest = true
M.user_id = nil
M.access_token = nil
M.selected_character = nil

function M.start_guest()
	M.is_guest = true
	M.user_id = "guest_" .. tostring(os.time())
	M.access_token = nil
	M.selected_character = nil
end

function M.set_auth(user_id, access_token)
	M.is_guest = false
	M.user_id = user_id
	M.access_token = access_token
end

function M.logout()
	M.is_guest = true
	M.user_id = nil
	M.access_token = nil
	M.selected_character = nil
end

return M