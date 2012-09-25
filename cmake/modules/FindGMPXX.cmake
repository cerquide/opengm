FIND_PATH(GMPXX_INCLUDE_DIR gmpxx.h $ENV{HOME}/.local/include)

FIND_LIBRARY(GMPXX_LIBRARY NAMES gmpxx PATH $ENV{HOME}/.local/include)

IF (GMPXX_INCLUDE_DIR AND GMPXX_LIBRARY)
   SET(GMPXX_FOUND TRUE)
ENDIF (GMPXX_INCLUDE_DIR AND GMPXX_LIBRARY)

IF (GMPXX_FOUND)
   IF (NOT GMPXX_FIND_QUIETLY)
      MESSAGE(STATUS "Found GMPXX: ${GMPXX_LIBRARY}")
   ENDIF(NOT GMPXX_FIND_QUIETLY)
ELSE (GMPXX_FOUND)
IF (GMPXX_FIND_REQUIRED)
   MESSAGE(FATAL_ERROR "Could not find GMPXX")
   ENDIF (GMPXX_FIND_REQUIRED)
ENDIF (GMPXX_FOUND)
