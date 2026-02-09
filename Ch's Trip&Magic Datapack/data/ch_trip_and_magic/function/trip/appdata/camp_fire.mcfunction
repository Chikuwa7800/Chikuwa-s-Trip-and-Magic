execute if block ~ ~ ~ campfire[facing=north,signal_fire=false] run setblock ~ ~ ~ campfire[lit=true,facing=north,signal_fire=false]
execute if block ~ ~ ~ campfire[facing=east,signal_fire=false] run setblock ~ ~ ~ campfire[lit=true,facing=east,signal_fire=false]
execute if block ~ ~ ~ campfire[facing=west,signal_fire=false] run setblock ~ ~ ~ campfire[lit=true,facing=west,signal_fire=false]
execute if block ~ ~ ~ campfire[facing=south,signal_fire=false] run setblock ~ ~ ~ campfire[lit=true,facing=south,signal_fire=false]

execute if block ~ ~ ~ campfire[facing=north,signal_fire=true] run setblock ~ ~ ~ campfire[lit=true,facing=north,signal_fire=true]
execute if block ~ ~ ~ campfire[facing=east,signal_fire=true] run setblock ~ ~ ~ campfire[lit=true,facing=east,signal_fire=true]
execute if block ~ ~ ~ campfire[facing=west,signal_fire=true] run setblock ~ ~ ~ campfire[lit=true,facing=west,signal_fire=true]
execute if block ~ ~ ~ campfire[facing=south,signal_fire=true] run setblock ~ ~ ~ campfire[lit=true,facing=south,signal_fire=true]