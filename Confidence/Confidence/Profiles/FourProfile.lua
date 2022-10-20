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

Confidence.Profiles.FourProfile = {};

Confidence.Profiles.FourProfile.Solution = "4";

Confidence.Profiles.FourProfile.s = function (x, y)
    local index = #Confidence.Profiles.FourProfile;
    if (Confidence.Profiles.FourProfile[index] ~= nil) then
        index = index + 1;
    end
     
    Confidence.Profiles.FourProfile[index] = 1000 * math.floor(y) + math.floor(x);
    
    return Confidence.Profiles.FourProfile; 
end

Confidence.Profiles.FourProfile.g = function (i)
    return { y = math.floor(Confidence.Profiles.FourProfile[i]/1000), x = Confidence.Profiles.FourProfile[i]%1000 }
end

Confidence.Profiles.FourProfile
.s(31,24)
.s(34,24)
.s(43,24)
.s(49,24)
.s(73,24)
.s(79,24)
.s(31,30)
.s(37,30)
.s(43,30)
.s(61,30)
.s(73,30)
.s(79,30)
.s(31,36)
.s(37,36)
.s(43,36)
.s(49,36)
.s(61,36)
.s(73,36)
.s(79,36)
.s(31,42)
.s(37,42)
.s(43,42)
.s(61,42)
.s(73,42)
.s(79,42)
.s(31,48)
.s(37,48)
.s(43,48)
.s(49,48)
.s(73,48)
.s(79,48)
.s(31,54)
.s(37,54)
.s(43,54)
.s(49,54)
.s(61,54)
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
.s(31,66)
.s(37,66)
.s(43,66)
.s(49,66)
.s(55,66)
.s(61,66)
.s(67,66)
.s(73,66)
.s(79,66)
.s(73,72)
.s(79,72)
.s(85,72)
.s(61,78)
.s(67,78)
.s(73,78)
.s(79,78)
.s(61,84)
.s(73,84)
.s(79,84)
.s(61,90)
.s(67,90)
.s(73,90)
.s(79,90)
.s(73,96)
.s(61,102)
.s(73,102)
.s(79,102)
.s(61,108)
.s(73,108)
.s(79,108);