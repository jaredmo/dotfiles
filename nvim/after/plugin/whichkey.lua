local wk = require("which-key")

wk.register({
	b = "Buffer",
	g = {
		name = "Git",
		t = "Toggle"
	},
	p = "Files"
}, { prefix = "<leader>" })
