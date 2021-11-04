### WSL

Add these to WSL config in the action section, in order to make emacs work properly:

```
{
  "command": "unbound",
  "keys": "ctrl+v"
},
{
  "command": "unbound",
  "keys": "ctrl+c"
},
{
  "command": "unbound",
  "keys": "ctrl+shift+w"
},
```