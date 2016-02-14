#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

#PS1="${bold_cyan}$(scm_char)${green}$(scm_prompt_info)${purple}$(ruby_version_prompt) ${yellow}\u-\h: ${reset_color}in ${green}\w ${reset_color}\n${green}→${reset_color} "
#PS1="${purple}\u-\h: ${reset_color} ${green}\w\n${bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}→${reset_color} "
#PS1="${cyan}\u-\h: ${reset_color} ${yellow}\w\n${red}$(scm_char)${red}$(scm_prompt_info) ${green}→${reset_color} "
PS1= "${cyan}\u-\h: ${reset_color} ${yellow}\w ${green}$(scm_prompt_info)\n${reset_color}→ "

reset_prompt () {
  export PS1= "\n${cyan}\u-\h: ${reset_color} ${yellow}\w ${green}$(scm_prompt_info)\n${reset_color}→ "
}

PROMPT_COMMAND='(( PROMPT_CTR-- < 0 )) && { 
  unset PROMPT_COMMAND PROMPT_CTR
  reset_prompt
}'
