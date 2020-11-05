local mpsym = require 'mpsym'

local args = mpsym.parse_args(args, 'i')

local processors = mpsym.identical_processors(args[1], 'P')
local channels = mpsym.grid_channels(processors, 'C')

return mpsym.ArchGraph:create{
  directed = false,
  processors = processors,
  channels = channels
}
