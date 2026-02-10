local M = {}

M.routes = {
	home = msg.url("main:/home_proxy"),
	signup = msg.url("main:/signup_proxy"),
	login = msg.url("main:/login_proxy"),
	character = msg.url("main:/character_proxy"),
}

M.current = nil

function M.go(route_name)
	local target = M.routes[route_name]
	assert(target, "Unknown route: " .. tostring(route_name))

	if M.current then
		msg.post(M.current, "unload")
	end

	M.current = target
	msg.post(target, "load")
	msg.post(target, "enable")
end

return M
