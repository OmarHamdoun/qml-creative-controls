pragma Singleton

import QtQuick 2.6

QtObject
{
    function distance(x1,y1,x2,y2)
    {
        var a = x1 - x2
        var b = y1 - y2

        return Math.sqrt( a*a + b*b );
    }

    function clamp(val, min, max) {
        return Math.min(Math.max(val, min), max);
    }

    // a : source range; b : target range.
    // val in [a0; a1] is scaled to [b0; b1]
    function rescale(val, a0, a1, b0, b1)
    {
        var coeff = (b1 - b0) / (a1 - a0);
        return b0 + coeff * (val - a0);
    }


}
