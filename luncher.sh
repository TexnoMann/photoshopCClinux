#!/usr/bin/env bash
if [ $# -ne 0 ];then
    echo "I havn't any parameter just run script without argument"
    exit 1
fi

notify-send "photoshop started" -i "photoshop"

SCR_PATH="$HOME/.photoshopCCV19"
CACHE_PATH="$HOME/.cache/photoshopCCV19"

WINE_PATH="$SCR_PATH/wine-3.4"

RESOURCES_PATH="$SCR_PATH/resources"
WINE_PREFIX="$SCR_PATH/prefix"
 

export WINEPREFIX="$WINE_PREFIX"
export PATH="$WINE_PATH/bin:$PATH"
export LD_LIBRARY_PATH="$WINE_PATH/lib:$LD_LIBRARY_PATH"
#export WINEDLLOVERRIDES="winemenubuilder.exe=d"
export WINESERVER="$WINE_PATH/bin/wineserver"
export WINELOADER="$WINE_PATH/bin/wine"
export WINEDLLPATH="$WINE_PATH/lib/wine"

wine $HOME/.photoshopCCV19/prefix/drive_c/users/$USER/PhotoshopSE/Photoshop.exe
