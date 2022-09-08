local P = require('palette')
local Red = P.Red
local Orange = P.Orange
local Yellow = P.Yellow
local Green = P.Green
local Mint = P.Mint
local Blue = P.Blue
local DarkBlue = P.DarkBlue
local Purple = P.Purple
local BlueGrey = P.BlueGrey
local Grey = P.Grey

return {
  normal = {
    a = { bg = Green[6].hex, fg = Green[16].hex, gui = 'bold' },
    b = { bg = Green[4].hex, fg = Green[16].hex },
    c = { bg = Green[1].hex, fg = Green[18].hex },
    x = { bg = Green[1].hex, fg = Green[18].hex },
    y = { bg = Green[4].hex, fg = Green[16].hex },
    z = { bg = Green[6].hex, fg = Green[16].hex, gui = 'bold' },
  },
  insert = {
    a = { bg = Orange[8].hex, fg = Orange[16].hex, gui = 'bold' },
    b = { bg = Orange[5].hex, fg = Orange[16].hex },
    c = { bg = Orange[2].hex, fg = Orange[18].hex },
    x = { bg = Orange[2].hex, fg = Orange[18].hex },
    y = { bg = Orange[5].hex, fg = Orange[16].hex },
    z = { bg = Orange[8].hex, fg = Orange[16].hex, gui = 'bold' },
  },
  visual = {
    a = { bg = Blue[6].hex, fg = Blue[16].hex, gui = 'bold' },
    b = { bg = Blue[4].hex, fg = Blue[16].hex },
    c = { bg = Blue[1].hex, fg = Blue[18].hex },
    x = { bg = Blue[1].hex, fg = Blue[18].hex },
    y = { bg = Blue[4].hex, fg = Blue[16].hex },
    z = { bg = Blue[6].hex, fg = Blue[16].hex, gui = 'bold' },
  },
  replace = {
    a = { bg = Red[6].hex, fg = Red[16].hex, gui = 'bold' },
    b = { bg = Red[4].hex, fg = Red[16].hex },
    c = { bg = Red[1].hex, fg = Red[18].hex },
    x = { bg = Red[1].hex, fg = Red[18].hex },
    y = { bg = Red[4].hex, fg = Red[16].hex },
    z = { bg = Red[6].hex, fg = Red[16].hex, gui = 'bold' },
  },
  command = {
    a = { bg = Yellow[6].hex, fg = Yellow[16].hex, gui = 'bold' },
    b = { bg = Yellow[4].hex, fg = Yellow[16].hex },
    c = { bg = Yellow[1].hex, fg = Yellow[18].hex },
    x = { bg = Yellow[1].hex, fg = Yellow[18].hex },
    y = { bg = Yellow[4].hex, fg = Yellow[16].hex },
    z = { bg = Yellow[6].hex, fg = Yellow[16].hex, gui = 'bold' },
  },
  inactive = {
    a = { bg = BlueGrey[8].hex, fg = BlueGrey[15].hex, gui = 'bold' },
    b = { bg = BlueGrey[6].hex, fg = BlueGrey[15].hex },
    c = { bg = BlueGrey[4].hex, fg = BlueGrey[15].hex },
    x = { bg = BlueGrey[4].hex, fg = BlueGrey[15].hex },
    y = { bg = BlueGrey[6].hex, fg = BlueGrey[15].hex },
    z = { bg = BlueGrey[8].hex, fg = BlueGrey[15].hex, gui = 'bold' }
  }
}
