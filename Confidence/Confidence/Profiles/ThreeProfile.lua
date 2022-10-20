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

Confidence.Profiles.ThreeProfile = {};

Confidence.Profiles.ThreeProfile.Solution = "3";

Confidence.Profiles.ThreeProfile.s = function (x, y)
    local index = #Confidence.Profiles.ThreeProfile;
    if (Confidence.Profiles.ThreeProfile[index] ~= nil) then
        index = index + 1;
    end
     
    Confidence.Profiles.ThreeProfile[index] = 1000 * math.floor(y) + math.floor(x);
    
    return Confidence.Profiles.ThreeProfile; 
end

Confidence.Profiles.ThreeProfile.g = function (i)
    return { y = math.floor(Confidence.Profiles.ThreeProfile[i]/1000), x = Confidence.Profiles.ThreeProfile[i]%1000 }
end

Confidence.Profiles.ThreeProfile
.s(61,24)
.s(43,30)
.s(49,30)
.s(55,30)
.s(61,30)
.s(67,30)
.s(73,30)
.s(79,30)
.s(37,36)
.s(43,36)
.s(49,36)
.s(55,36)
.s(61,36)
.s(67,36)
.s(73,36)
.s(79,36)
.s(31,42)
.s(37,42)
.s(43,42)
.s(49,42)
.s(73,42)
.s(49,42)
.s(85,42)
.s(37,48)
.s(43,48)
.s(73,48)
.s(79,48)
.s(85,48)
.s(67,54)
.s(73,54)
.s(79,54)
.s(61,60)
.s(67,60)
.s(73,60)
.s(79,60)
.s(55,66)
.s(61,66)
.s(67,66)
.s(73,66)
.s(55,72)
.s(61,72)
.s(67,72)
.s(73,72)
.s(61,78)
.s(67,78)
.s(73,78)
.s(79,78)
.s(67,84)
.s(73,84)
.s(79,84)
.s(43,90)
.s(73,90)
.s(79,90)
.s(85,90)
.s(31,96)
.s(37,96)
.s(43,96)
.s(49,96)
.s(73,96)
.s(79,96)
.s(37,102)
.s(43,102)
.s(49,102)
.s(55,102)
.s(61,102)
.s(67,102)
.s(73,102)
.s(79,102)
.s(43,108)
.s(49,108)
.s(55,108)
.s(61,108)
.s(67,108)
.s(73,108)
.s(61,114)
.s(67,114);