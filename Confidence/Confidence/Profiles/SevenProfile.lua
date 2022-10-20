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

Confidence.Profiles.SevenProfile = {};

Confidence.Profiles.SevenProfile.Solution = "7";

Confidence.Profiles.SevenProfile.s = function (x, y)
    local index = #Confidence.Profiles.SevenProfile;
    if (Confidence.Profiles.SevenProfile[index] ~= nil) then
        index = index + 1;
    end
     
    Confidence.Profiles.SevenProfile[index] = 1000 * math.floor(y) + math.floor(x);
    
    return Confidence.Profiles.SevenProfile; 
end

Confidence.Profiles.SevenProfile.g = function (i)
    return { y = math.floor(Confidence.Profiles.SevenProfile[i]/1000), x = Confidence.Profiles.SevenProfile[i]%1000 }
end

Confidence.Profiles.SevenProfile
.s(31,24)
.s(37,24)
.s(43,24)
.s(49,24)
.s(55,24)
.s(61,24)
.s(67,24)
.s(73,24)
.s(79,24)
.s(85,24)
.s(31,30)
.s(37,30)
.s(43,30)
.s(49,30)
.s(55,30)
.s(61,30)
.s(67,30)
.s(73,30)
.s(79,30)
.s(85,30)
.s(91,30)
.s(43,36)
.s(49,36)
.s(55,36)
.s(61,36)
.s(67,36)
.s(73,36)
.s(79,36)
.s(85,36)
.s(91,36)
.s(73,42)
.s(79,42)
.s(85,42)
.s(91,42)
.s(67,48)
.s(73,48)
.s(79,48)
.s(85,48)
.s(67,54)
.s(73,54)
.s(79,54)
.s(85,54)
.s(61,60)
.s(67,60)
.s(73,60)
.s(61,66)
.s(67,66)
.s(73,66)
.s(55,72)
.s(61,72)
.s(67,72)
.s(49,78)
.s(55,78)
.s(61,78)
.s(67,78)
.s(43,84)
.s(49,84)
.s(55,84)
.s(61,84)
.s(37,90)
.s(43,90)
.s(49,90)
.s(55,90)
.s(37,96)
.s(43,96)
.s(49,96)
.s(55,96)
.s(31,102)
.s(37,102)
.s(43,102)
.s(49,102)
.s(37,108)
.s(43,108);