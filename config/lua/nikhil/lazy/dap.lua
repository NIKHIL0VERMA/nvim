return {
	{
		"mfussenegger/nvim-dap",

		config = function()
			local dap = require("dap")

			dap.adapters["pwa-node"] = {
				type = "server",
				host = "localhost",
				port = "${port}",
				executable = {
					command = "js-debug-adapter",
					args = { "${port}" },
				},
			}

			local js_config = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch current file",
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
			}

			dap.configurations.javascript = js_config
			dap.configurations.typescript = js_config
			dap.configurations.javascriptreact = js_config
			dap.configurations.typescriptreact = js_config

			dap.adapters.python = {
				type = "executable",
				command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
				args = { "-m", "debugpy.adapter" },
			}

			dap.configurations.python = {
				{
					type = "python",
					request = "launch",
					name = "Launch current file",
					program = "${file}",
					pythonPath = function()
						return vim.fn.exepath("python3")
					end,
				},
			}

			vim.keymap.set("n", "<F5>", dap.continue, {
				desc = "Debug: Start / Continue",
			})

			vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, {
				desc = "Debug: Toggle Breakpoint",
			})

			vim.keymap.set("n", "<F10>", dap.step_over, {
				desc = "Debug: Step Over",
			})

			vim.keymap.set("n", "<F11>", dap.step_into, {
				desc = "Debug: Step Into",
			})

			vim.keymap.set("n", "<F12>", dap.step_out, {
				desc = "Debug: Step Out",
			})

			vim.keymap.set("n", "<leader>dt", dap.terminate, {
				desc = "Debug: Terminate",
			})
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},

		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end

			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end

			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end

			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>du", dapui.toggle, {
				desc = "Debug: Toggle UI",
			})

			vim.keymap.set({ "n", "v" }, "<leader>de", dapui.eval, {
				desc = "Debug: Evaluate",
			})
		end,
	},
}
