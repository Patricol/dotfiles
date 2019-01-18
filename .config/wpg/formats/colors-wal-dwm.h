static const char norm_fg[] = "#eeeeee";
static const char norm_bg[] = "#212121";
static const char norm_border[] = "#616161";

static const char sel_fg[] = "#eeeeee";
static const char sel_bg[] = "#00c853";
static const char sel_border[] = "#eeeeee";

static const char urg_fg[] = "#eeeeee";
static const char urg_bg[] = "#d50000";
static const char urg_border[] = "#d50000";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
