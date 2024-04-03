fx_version 'bodacious'
game 'gta5'

use_experimental_fxv2_oal 'yes'
lua54 'yes'

author 'You'
version '1.0.0'
server_script 'server.lua'

dependencies {
  'ox_lib',
  'ox_core',
  'ox_inventory'
}

shared_script '@ox_lib/init.lua'

ox_libs {
    'locale',
    'table',
    'math',
}