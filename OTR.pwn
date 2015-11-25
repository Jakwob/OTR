#include <a_samp>
#include <ZCMD>

#define SCM SendClientMessage

new bool:OTRenabled;

CMD:otr(playerid, params[])
{
    return 1;
}

CMD:otrs(playerid, params[])
{
    if(!isplayeradmin(playerid)) return 0;
    if(OTRenabled == false)
    (
        SCM(playerid, -1, "Off The Radar is now enabled for players to use.");
        OTRenabled = true;
    )
    else
    (
        SCM(playerid, -1, "Off The Radar is now disabled for players.");
        OTRenabled = false;
    ) 
    return 1;
}
