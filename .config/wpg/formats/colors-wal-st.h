const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#212121", /* black   */
  [1] = "#d50000", /* red     */
  [2] = "#00c853", /* green   */
  [3] = "#ffd600", /* yellow  */
  [4] = "#2962ff", /* blue    */
  [5] = "#aa00ff", /* magenta */
  [6] = "#00b8d4", /* cyan    */
  [7] = "#bdbdbd", /* white   */

  /* 8 bright colors */
  [8]  = "#616161",  /* black   */
  [9]  = "#ff5252",  /* red     */
  [10] = "#69f0ae", /* green   */
  [11] = "#ffff00", /* yellow  */
  [12] = "#448aff", /* blue    */
  [13] = "#e040fb", /* magenta */
  [14] = "#18ffff", /* cyan    */
  [15] = "#eeeeee", /* white   */

  /* special colors */
  [256] = "#212121", /* background */
  [257] = "#eeeeee", /* foreground */
  [258] = "#eeeeee",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
