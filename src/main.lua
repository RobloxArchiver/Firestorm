local ffi = require("ffi")

ffi.cdef([[
    int MessageBoxA(void *w, const char *txt, const char *cap, int type);
]])

function TextBox(text, title)
    ffi.C.MessageBoxA(nil, text, title, 0)
end

TextBox("Hail Hydra", " 🙏 ")