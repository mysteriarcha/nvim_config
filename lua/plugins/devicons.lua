return{
  "nvim-tree/nvim-web-devicons",
  config = function()
     require("nvim-web-devicons").set_icon{
      jl = {
        icon = "",
        color = "#f10606",
        cterm_color = "65",
        name = "Jl"
      },
      html = {
        icon = "",
        color = "#f1d12e",
        cterm_color = "50",
        name = "Html"
      },
      markdown = {
        icon = "󰽛",
        color = "#eeeeee",
        cterm_color = "51",
        name = "Md"
      },
      pdf = {
        icon = "󰈦",
        color = "#800000",
        cterm_color = "41",
        name = "Pdf"
      },
      epub = {
        icon = "󱞎",
        color = "#5f87ce",
        cterm_color = "40",
        name = "Epub"
      },
      json = {
        icon = "󰘦",
        color = "#ffa100",
        cterm_color = "42",
        name = "JSON"
      }
    }
  end

}
