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

Confidence.Profiles.OneProfile = {};

Confidence.Profiles.OneProfile.Solution = "1";

Confidence.Profiles.OneProfile.s = function (x, y)
    local index = #Confidence.Profiles.OneProfile;
    if (Confidence.Profiles.OneProfile[index] ~= nil) then
        index = index + 1;
    end
     
    Confidence.Profiles.OneProfile[index] = 1000 * math.floor(y) + math.floor(x);
    
    return Confidence.Profiles.OneProfile; 
end

Confidence.Profiles.OneProfile.g = function (i)
    return { y = math.floor(Confidence.Profiles.OneProfile[i]/1000), x = Confidence.Profiles.OneProfile[i]%1000 }
end

Confidence.Profiles.OneProfile
.s(43,30)
.s(49,30)
.s(55,30)
.s(61,30)
.s(67,30)
.s(73,30)
.s(31,36)
.s(37,36)
.s(43,36)
.s(49,36)
.s(55,36)
.s(61,36)
.s(67,36)
.s(24,42)
.s(31,42)
.s(37,42)
.s(43,42)
.s(49,42)
.s(55,42)
.s(61,42)
.s(67,42)
.s(24,48)
.s(31,48)
.s(37,48)
.s(55,48)
.s(61,48)
.s(67,48)
.s(49,54)
.s(55,54)
.s(61,54)
.s(67,54)
.s(49,60)
.s(55,60)
.s(61,60)
.s(67,60)
.s(49,66)
.s(55,66)
.s(61,66)
.s(67,66)
.s(49,72)
.s(55,72)
.s(61,72)
.s(67,72)
.s(49,78)
.s(55,78)
.s(61,78)
.s(67,78)
.s(49,84)
.s(55,84)
.s(61,84)
.s(67,84)
.s(49,90)
.s(55,90)
.s(61,90)
.s(67,90)
.s(55,96)
.s(61,96)
.s(31,102)
.s(37,102)
.s(43,102)
.s(49,102)
.s(55,102)
.s(61,102)
.s(67,102)
.s(73,102)
.s(79,102)
.s(85,102)
.s(91,102)
.s(31,108)
.s(37,108)
.s(43,108)
.s(49,108)
.s(55,108)
.s(61,108)
.s(67,108)
.s(73,108)
.s(79,108)
.s(85,108);