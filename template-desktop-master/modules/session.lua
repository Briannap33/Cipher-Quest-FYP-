local M = {}

M.is_guest = true
M.access_token = nil
M.refresh_token = nil
M.user_id = nil
M.email = nil
M.selected_character = nil

function M.start_guest()
	M.is_guest = true
	M.access_token = nil
	M.refresh_token = nil
	M.user_id = nil
	M.email = nil
end

function M.start_user(auth_data)
	M.is_guest = false
	M.access_token = auth_data.access_token
	M.refresh_token = auth_data.refresh_token
	M.user_id = auth_data.user.id
	M.email = auth_data.user.email
end

function M.is_logged_in()
	return M.access_token ~= nil
end

return M