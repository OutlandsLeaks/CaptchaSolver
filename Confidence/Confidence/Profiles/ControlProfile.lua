----
----
---- Captcha Complete for UO Outlands
---- 
---- Written by terrorists
----
---- Released 2019
----
----- - - -  -  -   -    -      -
----- - - -  -  -   -    -      -

if ( Confidence == nil ) then
    Confidence = {};
end

if ( Confidence.Profiles == nil ) then
    Confidence.Profiles = {};
end

Confidence.Profiles.ControlProfile = {};

Confidence.Profiles.ControlProfile.Solution = "Control";

Confidence.Profiles.ControlProfile.s = function (x, y)
    local index = #Confidence.Profiles.ControlProfile;
    if (Confidence.Profiles.ControlProfile[index] ~= nil) then
        index = index + 1;
    end
     
    Confidence.Profiles.ControlProfile[index] = 1000 * math.floor(y) + math.floor(x);
    
    return Confidence.Profiles.ControlProfile; 
end

Confidence.Profiles.ControlProfile.g = function (i)
    return { y = math.floor(Confidence.Profiles.ControlProfile[i]/1000), x = Confidence.Profiles.ControlProfile[i]%1000 }
end

Confidence.Profiles.ControlProfile
.s(7,6)
.s(7,12)
.s(7,18)
.s(7,24)
.s(7,30)
.s(7,36)
.s(7,42)
.s(7,48)
.s(7,54)
.s(7,60)
.s(7,66)
.s(7,72)
.s(7,78)
.s(7,84)
.s(7,90)
.s(7,96)
.s(7,102)
.s(7,108)
.s(7,114)
.s(13,6)
.s(13,12)
.s(13,18)
.s(13,24)
.s(13,30)
.s(13,36)
.s(13,42)
.s(13,48)
.s(13,54)
.s(13,60)
.s(13,66)
.s(13,72)
.s(13,78)
.s(13,84)
.s(13,90)
.s(13,96)
.s(13,102)
.s(13,108)
.s(13,114)
.s(19,6)
.s(19,12)
.s(19,18)
.s(19,24)
.s(19,30)
.s(19,36)
.s(19,42)
.s(19,48)
.s(19,54)
.s(19,60)
.s(19,66)
.s(19,72)
.s(19,78)
.s(19,84)
.s(19,90)
.s(19,96)
.s(19,102)
.s(19,108)
.s(19,114)
.s(25,6)
.s(25,12)
.s(25,18)
.s(25,24)
.s(25,30)
.s(25,36)
.s(25,42)
.s(25,48)
.s(25,54)
.s(25,60)
.s(25,66)
.s(25,72)
.s(25,78)
.s(25,84)
.s(25,90)
.s(25,96)
.s(25,102)
.s(25,108)
.s(25,114)
.s(31,6)
.s(31,12)
.s(31,18)
.s(31,24)
.s(31,30)
.s(31,36)
.s(31,42)
.s(31,48)
.s(31,54)
.s(31,60)
.s(31,66)
.s(31,72)
.s(31,78)
.s(31,84)
.s(31,90)
.s(31,96)
.s(31,102)
.s(31,108)
.s(31,114)
.s(37,6)
.s(37,12)
.s(37,18)
.s(37,24)
.s(37,30)
.s(37,36)
.s(37,42)
.s(37,48)
.s(37,54)
.s(37,60)
.s(37,66)
.s(37,72)
.s(37,78)
.s(37,84)
.s(37,90)
.s(37,96)
.s(37,102)
.s(37,108)
.s(37,114)
.s(43,6)
.s(43,12)
.s(43,18)
.s(43,24)
.s(43,30)
.s(43,36)
.s(43,42)
.s(43,48)
.s(43,54)
.s(43,60)
.s(43,66)
.s(43,72)
.s(43,78)
.s(43,84)
.s(43,90)
.s(43,96)
.s(43,102)
.s(43,108)
.s(43,114)
.s(49,6)
.s(49,12)
.s(49,18)
.s(49,24)
.s(49,30)
.s(49,36)
.s(49,42)
.s(49,48)
.s(49,54)
.s(49,60)
.s(49,66)
.s(49,72)
.s(49,78)
.s(49,84)
.s(49,90)
.s(49,96)
.s(49,102)
.s(49,108)
.s(49,114)
.s(55,6)
.s(55,12)
.s(55,18)
.s(55,24)
.s(55,30)
.s(55,36)
.s(55,42)
.s(55,48)
.s(55,54)
.s(55,60)
.s(55,66)
.s(55,72)
.s(55,78)
.s(55,84)
.s(55,90)
.s(55,96)
.s(55,102)
.s(55,108)
.s(55,114)
.s(61,6)
.s(61,12)
.s(61,18)
.s(61,24)
.s(61,30)
.s(61,36)
.s(61,42)
.s(61,48)
.s(61,54)
.s(61,60)
.s(61,66)
.s(61,72)
.s(61,78)
.s(61,84)
.s(61,90)
.s(61,96)
.s(61,102)
.s(61,108)
.s(61,114)
.s(67,6)
.s(67,12)
.s(67,18)
.s(67,24)
.s(67,30)
.s(67,36)
.s(67,42)
.s(67,48)
.s(67,54)
.s(67,60)
.s(67,66)
.s(67,72)
.s(67,78)
.s(67,84)
.s(67,90)
.s(67,96)
.s(67,102)
.s(67,108)
.s(67,114)
.s(73,6)
.s(73,12)
.s(73,18)
.s(73,24)
.s(73,30)
.s(73,36)
.s(73,42)
.s(73,48)
.s(73,54)
.s(73,60)
.s(73,66)
.s(73,72)
.s(73,78)
.s(73,84)
.s(73,90)
.s(73,96)
.s(73,102)
.s(73,108)
.s(73,114)
.s(79,6)
.s(79,12)
.s(79,18)
.s(79,24)
.s(79,30)
.s(79,36)
.s(79,42)
.s(79,48)
.s(79,54)
.s(79,60)
.s(79,66)
.s(79,72)
.s(79,78)
.s(79,84)
.s(79,90)
.s(79,96)
.s(79,102)
.s(79,108)
.s(79,114)
.s(85,6)
.s(85,12)
.s(85,18)
.s(85,24)
.s(85,30)
.s(85,36)
.s(85,42)
.s(85,48)
.s(85,54)
.s(85,60)
.s(85,66)
.s(85,72)
.s(85,78)
.s(85,84)
.s(85,90)
.s(85,96)
.s(85,102)
.s(85,108)
.s(85,114)
.s(91,6)
.s(91,12)
.s(91,18)
.s(91,24)
.s(91,30)
.s(91,36)
.s(91,42)
.s(91,48)
.s(91,54)
.s(91,60)
.s(91,66)
.s(91,72)
.s(91,78)
.s(91,84)
.s(91,90)
.s(91,96)
.s(91,102)
.s(91,108)
.s(91,114)
.s(97,6)
.s(97,12)
.s(97,18)
.s(97,24)
.s(97,30)
.s(97,36)
.s(97,42)
.s(97,48)
.s(97,54)
.s(97,60)
.s(97,66)
.s(97,72)
.s(97,78)
.s(97,84)
.s(97,90)
.s(97,96)
.s(97,102)
.s(97,108)
.s(97,114)
.s(103,6)
.s(103,12)
.s(103,18)
.s(103,24)
.s(103,30)
.s(103,36)
.s(103,42)
.s(103,48)
.s(103,54)
.s(103,60)
.s(103,66)
.s(103,72)
.s(103,78)
.s(103,84)
.s(103,90)
.s(103,96)
.s(103,102)
.s(103,108)
.s(103,114)
.s(109,6)
.s(109,12)
.s(109,18)
.s(109,24)
.s(109,30)
.s(109,36)
.s(109,42)
.s(109,48)
.s(109,54)
.s(109,60)
.s(109,66)
.s(109,72)
.s(109,78)
.s(109,84)
.s(109,90)
.s(109,96)
.s(109,102)
.s(109,108)
.s(109,114)
.s(115,6)
.s(115,12)
.s(115,18)
.s(115,24)
.s(115,30)
.s(115,36)
.s(115,42)
.s(115,48)
.s(115,54)
.s(115,60)
.s(115,66)
.s(115,72)
.s(115,78)
.s(115,84)
.s(115,90)
.s(115,96)
.s(115,102)
.s(115,108)
.s(115,114);
