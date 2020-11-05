local mpsym = require 'mpsym'

local processors = mpsym.identical_processors(64, 'P')
local channels = mpsym.grid_channels(processors, 'C')

return mpsym.ArchGraph:create{
  directed = false,
  processors = processors,
  channels = channels
}
