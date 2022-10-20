hi there,

this is an OpenEUO v0.91 script written to defeat the UO Outlands CAPTCHA system.

-------------------------

USAGE

at the top of your script, include the Confidence entry file:

dofile( "./Confidence.lua" );


in your stupid little script you can check for a CAPTCHA gump (and solve it, if one exists) by calling:

while ( Confidence.Check() ) do
    wait( 100 );
end

---------------------------

remember to vote progressive.

your queen,
Alexandria Ocasio-Cortez
