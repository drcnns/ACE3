#define DEBUG_MODE_FULL
#include "script_component.hpp"

EXPLODE_7_PVT((_this select 0),_shooter,_weapon,_muzzle,_mode,_ammo,_magazine,_projectile);
private["_targets", "_foundTargetPos", "_launchParams", "_seekerParams", "_targetLaunchParams"];

_launchParams = _this select 1;
_targetLaunchParams = _launchParams select 1;

_seekerParams = _this select 3;

_targets = [_projectile, ACE_DEFAULT_LASER_CODE, (_seekerParams select 0)] call ace_laser_fnc_findLaserDesignator;
_foundTargetPos = getPosASL (_targets select 1);

TRACE_1("Seeker return target pos", _foundTargetPos);
_foundTargetPos;