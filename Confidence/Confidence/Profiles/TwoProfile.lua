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

Confidence.Profiles.TwoProfile = {};

Confidence.Profiles.TwoProfile.Solution = "2";

Confidence.Profiles.TwoProfile.s = function (x, y)
    local index = #Confidence.Profiles.TwoProfile;
    if (Confidence.Profiles.TwoProfile[index] ~= nil) then
        index = index + 1;
    end
     
    Confidence.Profiles.TwoProfile[index] = 1000 * math.floor(y) + math.floor(x);
    
    return Confidence.Profiles.TwoProfile; 
end

Confidence.Profiles.TwoProfile.g = function (i)
    return { y = math.floor(Confidence.Profiles.TwoProfile[i]/1000), x = Confidence.Profiles.TwoProfile[i]%1000 }
end

Confidence.Profiles.TwoProfile
.s(61,24)
.s(67,24)
.s(37,30)
.s(43,30)
.s(49,30)
.s(55,30)
.s(61,30)
.s(67,30)
.s(73,30)
.s(79,30)
.s(85,30)
.s(31,36)
.s(37,36)
.s(43,36)
.s(49,36)
.s(61,36)
.s(67,36)
.s(73,36)
.s(79,36)
.s(24,42)
.s(31,42)
.s(37,42)
.s(43,42)
.s(79,42)
.s(85,42)
.s(73,48)
.s(79,48)
.s(85,48)
.s(73,54)
.s(79,54)
.s(61,60)
.s(67,60)
.s(73,60)
.s(79,60)
.s(85,60)
.s(55,66)
.s(61,66)
.s(67,66)
.s(73,66)
.s(55,72)
.s(61,72)
.s(67,72)
.s(73,72)
.s(43,78)
.s(49,78)
.s(55,78)
.s(61,78)
.s(67,78)
.s(43,84)
.s(49,84)
.s(55,84)
.s(61,84)
.s(31,90)
.s(37,90)
.s(43,90)
.s(49,90)
.s(55,90)
.s(43,96)
.s(49,96)
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