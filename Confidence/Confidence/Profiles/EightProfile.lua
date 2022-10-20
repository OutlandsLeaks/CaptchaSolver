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

Confidence.Profiles.EightProfile = {};

Confidence.Profiles.EightProfile.Solution = "8";

Confidence.Profiles.EightProfile.s = function (x, y)
    local index = #Confidence.Profiles.EightProfile;
    if (Confidence.Profiles.EightProfile[index] ~= nil) then
        index = index + 1;
    end
     
    Confidence.Profiles.EightProfile[index] = 1000 * math.floor(y) + math.floor(x);
    
    return Confidence.Profiles.EightProfile; 
end

Confidence.Profiles.EightProfile.g = function (i)
    return { y = math.floor(Confidence.Profiles.EightProfile[i]/1000), x = Confidence.Profiles.EightProfile[i]%1000 }
end

Confidence.Profiles.EightProfile
.s(43,24)
.s(49,24)
.s(55,24)
.s(61,24)
.s(67,24)
.s(31,30)
.s(37,30)
.s(43,30)
.s(49,30)
.s(55,30)
.s(61,30)
.s(67,30)
.s(73,30)
.s(79,30)
.s(43,36)
.s(49,36)
.s(67,36)
.s(73,36)
.s(79,36)
.s(31,42)
.s(37,42)
.s(43,42)
.s(49,42)
.s(67,42)
.s(73,42)
.s(79,42)
.s(37,48)
.s(43,48)
.s(67,48)
.s(73,48)
.s(79,48)
.s(37,54)
.s(43,54)
.s(49,54)
.s(67,54)
.s(73,54)
.s(79,54)
.s(37,60)
.s(43,60)
.s(49,60)
.s(55,60)
.s(61,60)
.s(67,60)
.s(73,60)
.s(79,60)
.s(37,66)
.s(43,66)
.s(49,66)
.s(55,66)
.s(61,66)
.s(67,66)
.s(73,66)
.s(79,66)
.s(49,72)
.s(55,72)
.s(61,72)
.s(67,72)
.s(73,72)
.s(79,72)
.s(37,78)
.s(43,78)
.s(49,78)
.s(61,78)
.s(67,78)
.s(73,78)
.s(79,78)
.s(31,84)
.s(37,84)
.s(43,84)
.s(49,84)
.s(55,84)
.s(67,84)
.s(73,84)
.s(79,84)
.s(37,90)
.s(43,90)
.s(49,90)
.s(55,90)
.s(67,90)
.s(73,90)
.s(79,90)
.s(85,90)
.s(31,96)
.s(37,96)
.s(43,96)
.s(49,96)
.s(61,96)
.s(67,96)
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
.s(73,108);