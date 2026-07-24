//   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   // 
//                                                                                                       
//    ##:  :##    :####:   :####:              .-''-.       .####.   ###  ###  ######:  
//    ##    ##    ######  :######            .' .-.  )      ######   ###  ###  #######: 
//    :##  ##:  :##:  .#  ##:  :#          / .'  / /.      :##  ##:  ###::###  ##   :## 
//    :##  ##:  ##        ##              (_/   / /        ##:  :##  ###  ###  ##    ## 
//     ## .##   ##.       ###:                 / /         ##    ##  ## ## ##  ##   :## 
//     ##::##   ##        :#####:             / /          ##    ##  ##:##:##  #######: 
//     ##::##   ##         .#####:           . '           ##    ##  ##.##.##  ######:  
//     :####:   ##.           :###         / /    _.-')    ##    ##  ## ## ##  ##       
//     .####.   ##              ##       .' '  _.'.-''     ##:  :##  ##    ##  ##       
//      ####    :##:  .#  #:.  :##     /  /.-'_.'          :##  ##:  ##    ##  ##       
//      ####      ######  #######:    /    _.'              ######   ##    ##  ##       
//       ##       :####:  .#####:    ( _.-'                 .####.   ##    ##  ##       
//                                                                                                       
//   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   // 
//                                        v1.0.5b
//                                        Minimap
//                                   author: spicybung

#define FILTERSCRIPT

#include <open.mp> //   Credits to Amir & OMP Team
#include <streamer> //  Credits to Incognito - and just in case

#define VCS_RADAR_MODEL_BASE              (-4000)
#define VCS_RADAR_MODEL_COUNT             (64)
#define VCS_ICON_MODEL_ID                  (-4064)
#define VCS_RADAR_COLUMNS                 (8)
#define VCS_RADAR_ROWS                    (8)

#define VCS_RADAR_LOADER_DFF              "vcs/DFF/cpsmallred.dff"
#define VCS_RADAR_TXD_DIRECTORY           "vcs/RADARVCS"
#define VCS_ICON_TXD_PATH                 "vcs/RADARVCS/player_icons.txd"

#define VCS_MAP_MIN_X                     (4000.0)
#define VCS_MAP_MAX_X                     (8000.0)
#define VCS_MAP_MIN_Y                     (-1000.0)
#define VCS_MAP_MAX_Y                     (3000.0)
#define VCS_RADAR_TILE_WORLD_SIZE         (500.0)

#define VCS_MINIMAP_X                     (24.0)
#define VCS_MINIMAP_Y                     (306.0)
#define VCS_MINIMAP_WIDTH                 (112.0)
#define VCS_MINIMAP_HEIGHT                (112.0)
#define VCS_MINIMAP_BORDER_SIZE           (2.0)
#define VCS_MINIMAP_ARROW_WIDTH           (10.0)
#define VCS_MINIMAP_ARROW_HEIGHT          (10.0)
#define VCS_MINIMAP_UPDATE_MS             (75)

#define VCS_MINIMAP_BORDER_COLOUR         (0x17131FFF)
#define VCS_MINIMAP_TILE_COLOUR           (0xFFFFFFFF)
#define VCS_MINIMAP_ARROW_COLOUR          (0xFFFFFFFF)
#define VCS_MINIMAP_MESSAGE_COLOUR        (0xE85DDCFF)

#define VCS_MINIMAP_BORDER_TOP            (0)
#define VCS_MINIMAP_BORDER_BOTTOM         (1)
#define VCS_MINIMAP_BORDER_LEFT           (2)
#define VCS_MINIMAP_BORDER_RIGHT          (3)

new PlayerText:gVCSMiniTile[MAX_PLAYERS];
new PlayerText:gVCSMiniBorders[MAX_PLAYERS][4];
new PlayerText:gVCSMiniArrow[MAX_PLAYERS];

new bool:gVCSMiniCreated[MAX_PLAYERS];
new bool:gVCSMiniEnabled[MAX_PLAYERS];
new bool:gVCSMiniVisible[MAX_PLAYERS];
new gVCSMiniLastTile[MAX_PLAYERS] = {-1, ...};
new gVCSMiniLastDirection[MAX_PLAYERS] = {-1, ...};
new Float:gVCSMiniLastArrowX[MAX_PLAYERS];
new Float:gVCSMiniLastArrowY[MAX_PLAYERS];
new gVCSMiniTimer;

forward VCSMini_UpdateAll();

new const gVCSMiniArrowTextures[8][] =
{
    "player_icon_n",
    "player_icon_nw",
    "player_icon_w",
    "player_icon_sw",
    "player_icon_s",
    "player_icon_se",
    "player_icon_e",
    "player_icon_ne"
};

stock VCSMini_ConfigureSprite(
    playerid,
    PlayerText:textdraw,
    Float:width,
    Float:height,
    colour
)
{
    PlayerTextDrawFont(playerid, textdraw, TEXT_DRAW_FONT_SPRITE);
    PlayerTextDrawTextSize(playerid, textdraw, width, height);
    PlayerTextDrawColour(playerid, textdraw, colour);
    PlayerTextDrawSetShadow(playerid, textdraw, 0);
    PlayerTextDrawSetOutline(playerid, textdraw, 0);
    PlayerTextDrawSetProportional(playerid, textdraw, false);
    PlayerTextDrawSetSelectable(playerid, textdraw, false);
    return 1;
}

stock VCSMini_CreateRectangle(
    playerid,
    &PlayerText:textdraw,
    Float:x,
    Float:y,
    Float:width,
    Float:height,
    colour
)
{
    textdraw = CreatePlayerTextDraw(playerid, x, y, "LD_SPAC:white");
    VCSMini_ConfigureSprite(playerid, textdraw, width, height, colour);
    return 1;
}

stock VCSMini_FormatRadarName(tileIndex, output[], outputSize)
{
    if (tileIndex < 10)
    {
        format(output, outputSize, "radar0%d", tileIndex);
    }
    else
    {
        format(output, outputSize, "radar%d", tileIndex);
    }
    return 1;
}

stock VCSMini_RegisterRadarModels()
{
    new txdPath[64];
    new radarName[16];

    for (new tileIndex = 0; tileIndex < VCS_RADAR_MODEL_COUNT; tileIndex++)
    {
        VCSMini_FormatRadarName(tileIndex, radarName, sizeof radarName);
        format(
            txdPath,
            sizeof txdPath,
            "%s/%s.txd",
            VCS_RADAR_TXD_DIRECTORY,
            radarName
        );

        AddSimpleModel(
            -1,
            19379,
            VCS_RADAR_MODEL_BASE - tileIndex,
            VCS_RADAR_LOADER_DFF,
            txdPath
        );
    }

    AddSimpleModel(
        -1,
        19379,
        VCS_ICON_MODEL_ID,
        VCS_RADAR_LOADER_DFF,
        VCS_ICON_TXD_PATH
    );
    return 1;
}

stock VCSMini_GetPlayerAngle(playerid, &Float:angle)
{
    new vehicleid = GetPlayerVehicleID(playerid);

    if (vehicleid != 0)
    {
        GetVehicleZAngle(vehicleid, angle);
    }
    else
    {
        GetPlayerFacingAngle(playerid, angle);
    }

    while (angle < 0.0)
    {
        angle += 360.0;
    }

    while (angle >= 360.0)
    {
        angle -= 360.0;
    }
    return 1;
}

stock VCSMini_GetDirection(Float:angle)
{
    new direction = floatround(
        (angle + 22.5) / 45.0,
        floatround_floor
    );

    if (direction >= 8)
    {
        direction = 0;
    }
    return direction;
}

stock VCSMini_FormatArrowSprite(direction, output[], outputSize)
{
    format(
        output,
        outputSize,
        "mdl%d:%s",
        VCS_ICON_MODEL_ID,
        gVCSMiniArrowTextures[direction]
    );
    return 1;
}

stock VCSMini_CreatePlayer(playerid)
{
    if (gVCSMiniCreated[playerid])
    {
        return 1;
    }

    gVCSMiniTile[playerid] = CreatePlayerTextDraw(
        playerid,
        VCS_MINIMAP_X,
        VCS_MINIMAP_Y,
        "mdl-4000:radar00"
    );

    VCSMini_ConfigureSprite(
        playerid,
        gVCSMiniTile[playerid],
        VCS_MINIMAP_WIDTH,
        VCS_MINIMAP_HEIGHT,
        VCS_MINIMAP_TILE_COLOUR
    );

    VCSMini_CreateRectangle(
        playerid,
        gVCSMiniBorders[playerid][VCS_MINIMAP_BORDER_TOP],
        VCS_MINIMAP_X - VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_Y - VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_WIDTH + (VCS_MINIMAP_BORDER_SIZE * 2.0),
        VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_BORDER_COLOUR
    );

    VCSMini_CreateRectangle(
        playerid,
        gVCSMiniBorders[playerid][VCS_MINIMAP_BORDER_BOTTOM],
        VCS_MINIMAP_X - VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_Y + VCS_MINIMAP_HEIGHT,
        VCS_MINIMAP_WIDTH + (VCS_MINIMAP_BORDER_SIZE * 2.0),
        VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_BORDER_COLOUR
    );

    VCSMini_CreateRectangle(
        playerid,
        gVCSMiniBorders[playerid][VCS_MINIMAP_BORDER_LEFT],
        VCS_MINIMAP_X - VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_Y,
        VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_HEIGHT,
        VCS_MINIMAP_BORDER_COLOUR
    );

    VCSMini_CreateRectangle(
        playerid,
        gVCSMiniBorders[playerid][VCS_MINIMAP_BORDER_RIGHT],
        VCS_MINIMAP_X + VCS_MINIMAP_WIDTH,
        VCS_MINIMAP_Y,
        VCS_MINIMAP_BORDER_SIZE,
        VCS_MINIMAP_HEIGHT,
        VCS_MINIMAP_BORDER_COLOUR
    );

    gVCSMiniArrow[playerid] = CreatePlayerTextDraw(
        playerid,
        VCS_MINIMAP_X + (VCS_MINIMAP_WIDTH * 0.5) -
            (VCS_MINIMAP_ARROW_WIDTH * 0.5),
        VCS_MINIMAP_Y + (VCS_MINIMAP_HEIGHT * 0.5) -
            (VCS_MINIMAP_ARROW_HEIGHT * 0.5),
        "mdl-4064:player_icon_n"
    );

    VCSMini_ConfigureSprite(
        playerid,
        gVCSMiniArrow[playerid],
        VCS_MINIMAP_ARROW_WIDTH,
        VCS_MINIMAP_ARROW_HEIGHT,
        VCS_MINIMAP_ARROW_COLOUR
    );

    gVCSMiniCreated[playerid] = true;
    gVCSMiniEnabled[playerid] = true;
    gVCSMiniVisible[playerid] = false;
    gVCSMiniLastTile[playerid] = -1;
    gVCSMiniLastDirection[playerid] = -1;
    gVCSMiniLastArrowX[playerid] = -10000.0;
    gVCSMiniLastArrowY[playerid] = -10000.0;
    return 1;
}

stock VCSMini_SetVisible(playerid, bool:visible)
{
    if (!gVCSMiniCreated[playerid] || gVCSMiniVisible[playerid] == visible)
    {
        return 1;
    }

    if (visible)
    {
        PlayerTextDrawShow(playerid, gVCSMiniTile[playerid]);

        for (new index = 0; index < 4; index++)
        {
            PlayerTextDrawShow(playerid, gVCSMiniBorders[playerid][index]);
        }

        PlayerTextDrawShow(playerid, gVCSMiniArrow[playerid]);
    }
    else
    {
        PlayerTextDrawHide(playerid, gVCSMiniTile[playerid]);

        for (new index = 0; index < 4; index++)
        {
            PlayerTextDrawHide(playerid, gVCSMiniBorders[playerid][index]);
        }

        PlayerTextDrawHide(playerid, gVCSMiniArrow[playerid]);
    }

    gVCSMiniVisible[playerid] = visible;
    return 1;
}

stock VCSMini_DestroyPlayer(playerid)
{
    if (!gVCSMiniCreated[playerid])
    {
        return 1;
    }

    PlayerTextDrawDestroy(playerid, gVCSMiniTile[playerid]);

    for (new index = 0; index < 4; index++)
    {
        PlayerTextDrawDestroy(playerid, gVCSMiniBorders[playerid][index]);
    }

    PlayerTextDrawDestroy(playerid, gVCSMiniArrow[playerid]);

    gVCSMiniCreated[playerid] = false;
    gVCSMiniEnabled[playerid] = false;
    gVCSMiniVisible[playerid] = false;
    gVCSMiniLastTile[playerid] = -1;
    gVCSMiniLastDirection[playerid] = -1;
    gVCSMiniLastArrowX[playerid] = -10000.0;
    gVCSMiniLastArrowY[playerid] = -10000.0;
    return 1;
}

stock VCSMini_UpdatePlayer(playerid)
{
    if (!IsPlayerConnected(playerid))
    {
        return 1;
    }

    if (!gVCSMiniCreated[playerid])
    {
        VCSMini_CreatePlayer(playerid);
    }

    if (
        !gVCSMiniEnabled[playerid] ||
        GetPlayerState(playerid) == PLAYER_STATE_NONE ||
        GetPlayerInterior(playerid) != 0 ||
        GetPlayerVirtualWorld(playerid) != 0
    )
    {
        VCSMini_SetVisible(playerid, false);
        return 1;
    }

    new Float:playerX;
    new Float:playerY;
    new Float:playerZ;
    GetPlayerPos(playerid, playerX, playerY, playerZ);
    #pragma unused playerZ

    if (
        playerX < VCS_MAP_MIN_X ||
        playerX >= VCS_MAP_MAX_X ||
        playerY < VCS_MAP_MIN_Y ||
        playerY >= VCS_MAP_MAX_Y
    )
    {
        VCSMini_SetVisible(playerid, false);
        return 1;
    }

    new column = floatround(
        (playerX - VCS_MAP_MIN_X) / VCS_RADAR_TILE_WORLD_SIZE,
        floatround_floor
    );

    new northRow = floatround(
        (VCS_MAP_MAX_Y - playerY) / VCS_RADAR_TILE_WORLD_SIZE,
        floatround_floor
    );

    if (column < 0)
    {
        column = 0;
    }
    else if (column >= VCS_RADAR_COLUMNS)
    {
        column = VCS_RADAR_COLUMNS - 1;
    }

    if (northRow < 0)
    {
        northRow = 0;
    }
    else if (northRow >= VCS_RADAR_ROWS)
    {
        northRow = VCS_RADAR_ROWS - 1;
    }

    new tileIndex = (northRow * VCS_RADAR_COLUMNS) + column;

    if (gVCSMiniLastTile[playerid] != tileIndex)
    {
        new radarName[16];
        new spriteName[48];

        VCSMini_FormatRadarName(tileIndex, radarName, sizeof radarName);
        format(
            spriteName,
            sizeof spriteName,
            "mdl%d:%s",
            VCS_RADAR_MODEL_BASE - tileIndex,
            radarName
        );

        PlayerTextDrawSetString(
            playerid,
            gVCSMiniTile[playerid],
            spriteName
        );

        gVCSMiniLastTile[playerid] = tileIndex;
    }

    new Float:tileMinX =
        VCS_MAP_MIN_X +
        (float(column) * VCS_RADAR_TILE_WORLD_SIZE);

    new Float:tileMaxY =
        VCS_MAP_MAX_Y -
        (float(northRow) * VCS_RADAR_TILE_WORLD_SIZE);

    new Float:localX =
        (playerX - tileMinX) /
        VCS_RADAR_TILE_WORLD_SIZE;

    new Float:localY =
        (tileMaxY - playerY) /
        VCS_RADAR_TILE_WORLD_SIZE;

    new Float:arrowX =
        VCS_MINIMAP_X +
        (localX * VCS_MINIMAP_WIDTH) -
        (VCS_MINIMAP_ARROW_WIDTH * 0.5);

    new Float:arrowY =
        VCS_MINIMAP_Y +
        (localY * VCS_MINIMAP_HEIGHT) -
        (VCS_MINIMAP_ARROW_HEIGHT * 0.5);

    new Float:angle;
    VCSMini_GetPlayerAngle(playerid, angle);

    new direction = VCSMini_GetDirection(angle);

    if (
        floatabs(arrowX - gVCSMiniLastArrowX[playerid]) >= 0.05 ||
        floatabs(arrowY - gVCSMiniLastArrowY[playerid]) >= 0.05 ||
        direction != gVCSMiniLastDirection[playerid]
    )
    {
        new bool:wasVisible = gVCSMiniVisible[playerid];
        new arrowSprite[48];

        VCSMini_FormatArrowSprite(
            direction,
            arrowSprite,
            sizeof arrowSprite
        );

        if (wasVisible)
        {
            PlayerTextDrawHide(playerid, gVCSMiniArrow[playerid]);
        }

        PlayerTextDrawDestroy(playerid, gVCSMiniArrow[playerid]);

        gVCSMiniArrow[playerid] = CreatePlayerTextDraw(
            playerid,
            arrowX,
            arrowY,
            arrowSprite
        );

        VCSMini_ConfigureSprite(
            playerid,
            gVCSMiniArrow[playerid],
            VCS_MINIMAP_ARROW_WIDTH,
            VCS_MINIMAP_ARROW_HEIGHT,
            VCS_MINIMAP_ARROW_COLOUR
        );

        if (wasVisible)
        {
            PlayerTextDrawShow(playerid, gVCSMiniArrow[playerid]);
        }

        gVCSMiniLastArrowX[playerid] = arrowX;
        gVCSMiniLastArrowY[playerid] = arrowY;
        gVCSMiniLastDirection[playerid] = direction;
    }

    VCSMini_SetVisible(playerid, true);
    return 1;
}

public OnFilterScriptInit()
{
    VCSMini_RegisterRadarModels();

    for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        if (IsPlayerConnected(playerid))
        {
            VCSMini_CreatePlayer(playerid);
            VCSMini_UpdatePlayer(playerid);
        }
    }

    gVCSMiniTimer = SetTimer(
        "VCSMini_UpdateAll",
        VCS_MINIMAP_UPDATE_MS,
        true
    );

    print("[VCSMinimap] Loaded 64 VCS radar tiles with rotating player icon.");
    return 1;
}

public OnFilterScriptExit()
{
    if (gVCSMiniTimer != 0)
    {
        KillTimer(gVCSMiniTimer);
        gVCSMiniTimer = 0;
    }

    for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        if (IsPlayerConnected(playerid))
        {
            VCSMini_DestroyPlayer(playerid);
        }
    }
    return 1;
}

public OnPlayerConnect(playerid)
{
    VCSMini_CreatePlayer(playerid);
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    #pragma unused reason
    VCSMini_DestroyPlayer(playerid);
    return 1;
}

public OnPlayerSpawn(playerid)
{
    VCSMini_UpdatePlayer(playerid);
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (!strcmp(cmdtext, "/minimap", true))
    {
        gVCSMiniEnabled[playerid] = !gVCSMiniEnabled[playerid];

        if (gVCSMiniEnabled[playerid])
        {
            VCSMini_UpdatePlayer(playerid);
            SendClientMessage(
                playerid,
                VCS_MINIMAP_MESSAGE_COLOUR,
                "VCS minimap enabled."
            );
        }
        else
        {
            VCSMini_SetVisible(playerid, false);
            SendClientMessage(
                playerid,
                VCS_MINIMAP_MESSAGE_COLOUR,
                "VCS minimap disabled."
            );
        }
        return 1;
    }
    return 0;
}

public VCSMini_UpdateAll()
{
    for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        if (IsPlayerConnected(playerid))
        {
            VCSMini_UpdatePlayer(playerid);
        }
    }
    return 1;
}
