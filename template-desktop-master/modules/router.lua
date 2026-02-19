local M = {}

M.routes = {
		home      = msg.url("main:/screen_manager#home_proxy"),
		signup    = msg.url("main:/screen_manager#signup_proxy"),
		login     = msg.url("main:/screen_manager#login_proxy"),
		character = msg.url("main:/screen_manager#character_proxy"),
}

M.current = nil

function M.go(route_name)
	local target = M.routes[route_name]
	assert(target, "Unknown route: " .. tostring(route_name))

	if M.current then
		msg.post(M.current, "disable")
		msg.post(M.current, "unload")
	end

	M.current = target
	msg.post(target, "load")
	msg.post(target, "enable")
end

return M
