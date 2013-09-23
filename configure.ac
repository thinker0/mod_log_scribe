#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([mod_log_scribe], 1.0)

dnl Get os info
AC_CANONICAL_SYSTEM

AM_INIT_AUTOMAKE([subdir-objects -Wall -Werror foreign])

# AC_CONFIG_SRCDIR([mod_log_scribe.c])
AC_CONFIG_HEADERS([config.h])
# AC_CONFIG_MACRO_DIR([m4])
# AC_PREFIX_DEFAULT([/usr/local])


# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_LD
AC_PROG_CPP
AM_PROG_AR

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lfb303':
AC_CHECK_LIB([fb303], [main])
# FIXME: Replace `main' with a function in `-lscribe':
AC_CHECK_LIB([scribe], [main])
# FIXME: Replace `main' with a function in `-lthrift':
AC_CHECK_LIB([thrift], [main])

# Checks for header files.
AC_CHECK_HEADERS([limits.h stdlib.h string.h unistd.h])


#
# --with-apxs
#
AC_ARG_WITH(apxs,
[AS_HELP_STRING([--with-apxs=PATH],
                [the Apache configuration utility])],
[
apxs=${withval}

if test "${apxs}" = "yes"; then

  apxs=`which apxs2` 2>/dev/null
  if test -z "$apxs"; then
    apxs=`which apxs` 2>/dev/null
  fi

  if test -z "$apxs"; then
    apxs=apxs2
  fi
  
  if test ! -x "$apxs"; then
    AC_ERROR("'$apxs' is not a valid apxs")
  fi   

fi

apache=1
])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_SIZE_T
AC_TYPE_UINT32_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_CHECK_FUNCS([memset socket strdup strerror strstr])
LT_INIT([disable-shared])
AC_CONFIG_FILES([Makefile scribe-cpp/Makefile])
AC_OUTPUT
