static const char norm_fg[] = "#f5f5f5";
static const char norm_bg[] = "#212121";
static const char norm_border[] = "#616161";

static const char sel_fg[] = "#f5f5f5";
static const char sel_bg[] = "#43a047";
static const char sel_border[] = "#f5f5f5";

static const char urg_fg[] = "#f5f5f5";
static const char urg_bg[] = "#e53935";
static const char urg_border[] = "#e53935";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
