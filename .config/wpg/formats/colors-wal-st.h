const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#212121", /* black   */
  [1] = "#e53935", /* red     */
  [2] = "#43a047", /* green   */
  [3] = "#fdd835", /* yellow  */
  [4] = "#1e88e5", /* blue    */
  [5] = "#d81b60", /* magenta */
  [6] = "#00acc1", /* cyan    */
  [7] = "#e0e0e0", /* white   */

  /* 8 bright colors */
  [8]  = "#616161",  /* black   */
  [9]  = "#ff0000",  /* red     */
  [10] = "#ff5a36", /* green   */
  [11] = "#ff00ff", /* yellow  */
  [12] = "#6d4c41", /* blue    */
  [13] = "#424242", /* magenta */
  [14] = "#9e9e9e", /* cyan    */
  [15] = "#f5f5f5", /* white   */

  /* special colors */
  [256] = "#212121", /* background */
  [257] = "#f5f5f5", /* foreground */
  [258] = "#f5f5f5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
