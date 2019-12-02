package = "kong-plugin-ejuoauthresource"
version = "1.0-1"
source = {
   url = "git://github.com/nixuw/ejuoauthresource",
   tag = "1.0",
}
description = {
   summary = "OAuth resource plugin",
   detailed = [[
      Help resource to valid the token.
   ]],
   homepage = "https://github.com/nixuw",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ejuoauthresource.handler"] = "kong/plugins/ejuoauthresource/handler.lua",
      ["kong.plugins.ejuoauthresource.schema"] = "kong/plugins/ejuoauthresource/schema.lua"
     },

   }

