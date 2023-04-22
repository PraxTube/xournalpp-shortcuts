function initUi()
  app.registerUi({["menu"] = "First Pen", ["callback"] = "first_pen", ["accelerator"] = "q"});
  app.registerUi({["menu"] = "Second Pen", ["callback"] = "second_pen", ["accelerator"] = "w"});
  app.registerUi({["menu"] = "Third Pen", ["callback"] = "third_pen", ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Forth Pen", ["callback"] = "forth_pen", ["accelerator"] = "r"});
  app.registerUi({["menu"] = "Select Lasso", ["callback"] = "lasso", ["accelerator"] = "s"});
  app.registerUi({["menu"] = "Eraser", ["callback"] = "eraser", ["accelerator"] = "d"});
  app.registerUi({["menu"] = "Hand", ["callback"] = "hand", ["accelerator"] = "v"});
  app.registerUi({["menu"] = "Zoom In", ["callback"] = "zoom_in", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Zoom Out", ["callback"] = "zoom_out", ["accelerator"] = "f"});
end

local colorList = {
  {"black", 0x000000},
  {"green", 0x008000},
  {"blue", 0x3333cc},
  {"red", 0xff0000},
  {"orange", 0xff8000},
}

function first_pen()
  select_pen(1)
end

function second_pen()
  select_pen(2)
end

function third_pen()
  select_pen(3)
end

function forth_pen()
  select_pen(4)
end

function select_pen(index)
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.changeToolColor({["color"] = colorList[index][2], ["selection"] = true})
end

function lasso()
  app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
end

function eraser()
  app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
end

function hand()
  app.uiAction({["action"] = "ACTION_TOOL_HAND"})
end

function zoom_in()
  app.uiAction({["action"]="ACTION_ZOOM_IN"})
end

function zoom_out()
  app.uiAction({["action"]="ACTION_ZOOM_OUT"})
end

local linestyleList = {"PLAIN", "DASH", "DASH_DOT", "DOT"}

local selectList = {"RECT", "REGION", "OBJECT"} -- don't use play selection tool

local toolList = {"PEN", "ERASER", "HIGHLIGHTER", "SELECTION"}

local eraserList = {"STANDARD", "DELETE_STROKE"} -- I don't use WHITEOUT

local drawingtypeList = {"TOOL_DRAW_RECT", "TOOL_DRAW_CIRCLE", "TOOL_DRAW_ARROW", "RULER", "TOOL_DRAW_SPLINE", "SHAPE_RECOGNIZER"}
