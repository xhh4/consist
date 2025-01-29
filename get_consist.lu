getgenv().consist = {
    script_settings = {
        notification = {
            enabled = true, -- // toggle notifications
            duration = 1.5, -- // notification duration 
            color = Color3.fromRGB(255, 192, 203) -- // notification color
        }
    },
    camlock = {
        binding = {
            keybind = Enum.KeyCode.C, -- // camlock bind
            mode = "Toggle" -- // Toggle, Hold
        },
        prediction = {
            use_prediction = true, -- // toggle prediction
            prediction_amount = 0.1 -- // prediction value
        },
        radius = 236, -- // fov radius
        target_part = "HumanoidRootPart" -- // target part
    },
    camera = {
        smoothing = 1 -- // camera smoothing
    },
    movement = {
        macro = {
            enabled = true, -- // macro toggle
            keybind = Enum.KeyCode.Z, -- // macro bind
            mode = "Third", -- // Third, First
            delay = 0.01 -- // speed delay
        }
    },
    fly = {
        enabled = true, -- // fly toggle 
        keybind = Enum.KeyCode.G, -- // fly bind
        speed = 122 -- // fly speed
    },
    visuals = {
        fov = {
            visible = true, -- // show fov
            color = Color3.fromRGB(255, 192, 203), -- // fov color
            transparency = 1, -- // fov transparency
            thickness = 1 -- // fov thickness
        },
        strafe = {
            visualize = true, -- // show strafe circle
            color = Color3.fromRGB(255, 192, 203), -- // circle color
            transparency = 1, -- // circle transparency
            thickness = 1 -- // circle thickness
        },
        ambience = {
            enabled = false, -- // enable ambience
            outdoor = Color3.fromRGB(255, 192, 203), -- // outdoor color
            indoor = Color3.fromRGB(255, 192, 203), -- // indoor color
            shift_top = Color3.fromRGB(255, 192, 203), -- // top color
            shift_bottom = Color3.fromRGB(255, 192, 203) -- // bottom color
        }
    },
    rage = {
        strafe = {
            enabled = true, -- // strafe toggle
            keybind = Enum.KeyCode.V, -- // strafe bind
            mode = "Normal", -- // Normal, Random
            height = 2, -- // strafe height
            distance = 6, -- // strafe distance
            speed = 30, -- // strafe speed
            view_target = true, -- // view target
            randomization = Vector3.new(5, 0, 5) -- // random strafe values
        },
        cframe = {
            enabled = true, -- // cframe toggle
            keybind = Enum.KeyCode.X, -- // cframe bind
            speed = 4 -- // cframe speed
        }
    },
    anti_aim = {
        enabled = true, -- // anti aim toggle
        keybind = Enum.KeyCode.J, -- // anti aim bind
        velocity = {
            x = 100, -- // x velocity
            y = 100, -- // y velocity
            z = 100 -- // z velocity
        }
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/xhh4/ICantTap/refs/heads/main/use_consist.lua"))()
