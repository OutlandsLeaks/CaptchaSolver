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

dofile("./Profiles/ControlProfile.lua");
dofile("./Profiles/OneProfile.lua");
dofile("./Profiles/TwoProfile.lua");
dofile("./Profiles/ThreeProfile.lua");
dofile("./Profiles/FourProfile.lua");
dofile("./Profiles/FiveProfile.lua");
dofile("./Profiles/SixProfile.lua");
dofile("./Profiles/SevenProfile.lua");
dofile("./Profiles/EightProfile.lua");
dofile("./Profiles/NineProfile.lua");

dofile("./External/FindItems.lua");

if ( Confidence == nil ) then
    Confidence = {};
end

if ( Confidence.Constants == nil ) then
    Confidence.Constants = {};
end

if ( Confidence.UserSettings == nil ) then
    Confidence.UserSettings = {};
end

-----------------------------------
-----------------------------------
---- User Settings
----
---- Select the type of tool you are using:
---- 1 = Pickaxe
---- 2 = Shovel
---- 3 = Hatchet
Confidence.UserSettings.Tool = 1;
-----------------------------------
-----------------------------------

Confidence.UserSettings.Debug = false;

function dprint ( msg )
    if ( Confidence.UserSettings.Debug == true ) then
        UO.SysMessage( msg );
    end
end

function Confidence.Init ()
    dprint( "Confidence.Init called" );
    Confidence.Form = Obj.Create("TMessageBox");
    Confidence.Form.Button = 1;
    Confidence.Form.Default = 1;
    Confidence.Form.Title = "Confidence";

    Confidence.Constants = {};
    if ( Confidence.UserSettings.Tool == 1 ) then
        Confidence.Constants.ToolType = 3718; -- pickaxe
        Confidence.Constants.ToolHand = 1; -- left
    end

    dprint( "Confidence.Init initializing profiles" );
    Confidence.Profiles.List = {};
    table.insert( Confidence.Profiles.List, Confidence.Profiles.OneProfile );
    table.insert( Confidence.Profiles.List, Confidence.Profiles.TwoProfile );
    table.insert( Confidence.Profiles.List, Confidence.Profiles.ThreeProfile );
    table.insert( Confidence.Profiles.List, Confidence.Profiles.FourProfile );
    table.insert( Confidence.Profiles.List, Confidence.Profiles.FiveProfile );
    table.insert( Confidence.Profiles.List, Confidence.Profiles.SixProfile );
    table.insert( Confidence.Profiles.List, Confidence.Profiles.SevenProfile );
    table.insert( Confidence.Profiles.List, Confidence.Profiles.EightProfile );
    table.insert( Confidence.Profiles.List,  Confidence.Profiles.NineProfile );
end

function Confidence.Check ()
    dprint( "Confidence.Check entered" );
    if ( not Confidence.IsGumpUp() ) then
        return false;
    end

    local toolId = Confidence.FindTool();
    Confidence.ToolID = toolId;

    Confidence.OpenGump();

    local oneSolutions = {};
    local twoSolutions = {};
    local threeSolutions = {};
    local oneSolved, twoSolved, threeSolved;
    oneSolved = false;
    twoSolved = false;
    threeSolved = false;

    while ( not oneSolved or not twoSolved or not threeSolved ) do
        dprint( "Confidence.Check looping results until set" );

        UO.Macro( 17, 0 ); -- bring gump to front
        wait( 500 );

        local curOneSolution, curTwoSolution, curThreeSolution = Confidence.Scan();

        oneSolved = Confidence.RegisterResult( curOneSolution, oneSolutions );
        twoSolved = Confidence.RegisterResult( curTwoSolution, twoSolutions );
        threeSolved = Confidence.RegisterResult( curThreeSolution, threeSolutions );

        dprint("got results [ " 
            ..curOneSolution.. "," 
            ..curTwoSolution.. "," 
            ..curThreeSolution.. " ]");
    end

    dprint( "Confidence.Check filling values [ " 
        ..oneSolved.. "," 
        ..twoSolved.. "," 
        ..threeSolved.. " ]" );

    Confidence.SubmitResult( 208, 117, oneSolved, false );
    Confidence.SubmitResult( 208, 248, twoSolved, true );
    Confidence.SubmitResult( 208, 378, threeSolved, true );

    --                  left  down  up    move   
    UO.Click( 161, 485, true, true, true, true );
    wait( math.random( 500, 1500 ) );
    UO.Click( 161, 485, true, true, true, true );

    return true;
end

function Confidence.SubmitResult( fieldX, fieldY, solution, doClick )
    if ( doClick ) then
        --                        left  down  up    move   
        UO.Click( fieldX, fieldY, true, true, true, true );
    end

    UO.Msg( solution );

    wait( 250 );
end

function Confidence.RegisterResult( newSolution, list )
    dprint( "Confidence.RegisterResult entered" );

    if ( list[newSolution] == nil ) then
        list[newSolution] = 0;
    end

    list[newSolution] = list[newSolution] + 1;
    if ( list[newSolution] > 3 ) then
        return newSolution;
    end

    return false;
end

function Confidence.OpenGump ()
    dprint( "Confidence.OpenGump entered" );
    UO.LObjectID = Confidence.ToolID;
    UO.Macro( 17, 0 ); -- arm tool
    wait( 1000 );
end

function Confidence.Scan ()
    dprint( "Confidence.Scan entered" );

    local firstPaneOrigin = { x = 46, y = 41 };
    local secondPaneOrigin = { x = 46, y = 173 };
    local thirdPaneOrigin = { x = 46, y = 303 };

    local firstPaneScan = Confidence.ScanPane( firstPaneOrigin );
    local secondPaneScan = Confidence.ScanPane( secondPaneOrigin );
    local thirdPaneScan = Confidence.ScanPane( thirdPaneOrigin );

    return firstPaneScan.Solution, secondPaneScan.Solution, thirdPaneScan.Solution;
end

function Confidence.ScanPane ( paneOrigin )
    dprint( "Confidence.ScanPane entered" );

    local controlScan = Confidence.DoScan( paneOrigin, Confidence.Profiles.ControlProfile, 0 );

    local currentBestConf = 0;
    local currentBestConfScan = nil;
    for i = 1, #Confidence.Profiles.List, 1 do
        dprint( "Confidence.ScanPane scanning pane with profile " ..i );

        local thisScan = Confidence.DoScan( 
            paneOrigin, 
            Confidence.Profiles.List[i], 
            #controlScan.Points 
        );

        if ( thisScan.Confidence > currentBestConf ) then
            currentBestConf = thisScan.Confidence;
            currentBestConfScan = thisScan;
        end
    end

    return currentBestConfScan;
end

function Confidence.DoScan ( paneOrigin, profile, controlHitsCount )
    dprint( "Confidence.DoScan entered" );
    local hitPoints = {};
    local hitCounter = {};
    for pointIndex = 1, #profile, 1 do
        local point = profile.g( pointIndex );
        local pixCol = UO.GetPix( paneOrigin.x + point.x, paneOrigin.y + point.y );

        if ( pixCol ~= 526344
            and pixCol ~= 3223857
            and pixCol ~= 524288
            and pixCol ~= 9213076
            and pixCol ~= 1050632 ) then
            table.insert( hitPoints, point );
        end
    end

    if ( controlHitsCount == 0 ) then
        local controlResult = { Confidence = 0, Solution = "0", Points = hitPoints };

        return controlResult;
    end

    local scan = Confidence.GetConfidence( hitPoints, profile, controlHitsCount );

    return scan;
end

function Confidence.GetConfidence( hitPoints, profile, controlHitsCount )
    dprint( "Confidence.GetConfidence entered" );
    local controlCoincidence = #hitPoints / controlHitsCount;
    local targetFill = #hitPoints / #profile;

    return {
        Confidence = controlCoincidence * ( targetFill + 0.1 ),
        Solution = profile.Solution,
        Points = hitPoints
    };
end

function Confidence.FindTool ()
    dprint( "Confidence.FindTool entered" );
    local tool = ScanItems( true, { ContID=UO.BackpackID, Type=Confidence.Constants.ToolType } );

    if ( tool == nil or #tool == 0 ) then
        Confidence.Form.Show( "Please get more tools (at least two). They should be in your main backpack and not in any nested. Script paused." );
        pause();
    end

    local single = tool[1];

    return single.ID;
end

function Confidence.IsGumpUp ()
    dprint( "Confidence.IsGumpUp entered" );
    local i = 0;
    local sName, nX, nY, nSX, nSY, nKind, nId, nType, nHP = 1;
    
    while ( sName ~= nil ) do
        sName, nX, nY, nSX, nSY, nKind, nId, nType, nHP = UO.GetCont( i );

        if ( nKind == 4756
            and nSX == 275
            and nSY == 507 ) then
            return true;
        end

        i = i + 1;
    end

    return false;
end

Confidence.Init();