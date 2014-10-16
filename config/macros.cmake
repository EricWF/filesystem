
################################################################################
#                           Macros & Functions
################################################################################

################################################################################
macro(config_message level msg)
    if (NOT CONFIGURATION_DONE)
        message(${level} ${msg})
    endif()
endmacro()

################################################################################
macro(stringify_list m_list dest)
    string(REPLACE ";" " " ${dest} "${m_list}")
endmacro(stringify_list)

################################################################################
macro(add_flags to)
    stringify_list("${ARGN}" _TMP)
    set(${to} "${${to}} ${_TMP}")
endmacro(add_flags)
