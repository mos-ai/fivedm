#!/bin/bash

cd ./resources

cd ./ox_core

pnpm install
pnpm build


cd ../oxmysql

pnpm install
pnpm build

cd ../ox_doorlock/web

pnpm install
pnpm build

cd ../../ox_lib/web

pnpm install
pnpm build


cd ../../ox_inventory/web

pnpm install
pnpm build

cd ../../npwd

pnpm install
pnpm build

cd ../dx_hud/web

pnpm install
pnpm build

cd ../../pefcl/

pnpm install
pnpm build

cd ./web/

pnpm install
pnpm build