# For basic zsh options
# man zshoptions

# History options
setopt BANG_HIST			# Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY			# Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY		# Write to the history file immediately, not when the shell exits.
#setopt SHARE_HISTORY			# Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST		# Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS			# Don't record an entry that was just recorded again.
#setopt HIST_IGNORE_ALL_DUPS		# Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS		# Do not display a line previously found.
setopt HIST_IGNORE_SPACE		# Don't record an entry starting with a space.
#setopt HIST_SAVE_NO_DUPS		# Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS		# Remove superfluous blanks before recording entry.
setopt HIST_VERIFY			# Don't execute immediately upon history expansion.
setopt HIST_BEEP			# Beep when accessing nonexistent history.
# HIST_STAMPS="mm/dd/yyyy" # change the command execution time stamp shown in the history command output. You can set one of the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" or set a custom format using the strftime function format specifications, see 'man strftime' for details.


setopt NO_FLOW_CONTROL		# No c-s/c-q output freezing
setopt PROMPT_SUBST		# Allow expansion in prompts
setopt NO_NO_MATCH		# Try to avoid the 'zsh: no matches found...'
setopt HASH_LIST_ALL		# Whenever a command completion is attempted, make sure the entire command path is hashed first.
setopt COMPLETE_IN_WORD		# Not just at the end
setopt NO_SH_WORD_SPLIT		# Use zsh style word splitting
setopt INTERACTIVE_COMMENTS	# Allow use of comments in interactive code

setopt AUTO_CD			# Auto changes to a directory without typing cd.
setopt AUTO_PUSHD		# Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS	# Do not store duplicates in the stack.
setopt PUSHD_SILENT		# Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME		# Push to home directory when no argument is given.
setopt CDABLE_VARS		# Change directory to a path stored in a variable.
setopt MULTI_OS			# Write to multiple descriptors.
#setopt EXTENDED_GLOB		# Use extended globbing syntax.
#setopt NO_CLOBBER		# Do not overwrite existing files with > and >>. Use >! and >>! to bypass.

setopt COMBINING_CHARS		# Combine zero-length punctuation characters (accents) with the base character.
setopt INTERACTIVE_COMMENTS	# Enable comments in interactive shell.

setopt LONG_LIST_JOBS		# List jobs in the long format by default.
setopt AUTO_RESUME		# Attempt to resume existing job before creating a new process.
setopt NOTIFY			# Report status of background jobs immediately.
setopt NO_BG_NICE		# Don't run all background jobs at a lower priority.
setopt NO_HUP			# Don't kill jobs on shell exit.
setopt NO_CHECK_JOBS		# Don't report on jobs when shell exit.

#setopt NO_BEEP

