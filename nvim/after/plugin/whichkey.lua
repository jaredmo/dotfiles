local wk = require("which-key")

wk.register({
	b = {
		name = "Buffer",
	},
	g = {
		name = "Git",
		t = "Toggle"
	},
	p = {
		name = "Files",
	},
}, { prefix = "<leader>" })
