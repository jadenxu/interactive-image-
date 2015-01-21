FIND_PATH( SOIL_INCLUDE_DIRS SOIL/SOIL.h /usr/include /usr/local/include $ENV{INCLUDE} )
FIND_LIBRARY( SOIL_LIBRARIES NAMES SOIL PATHS /usr/lib /usr/local/lib )

IF(SOIL_INCLUDE_DIRS)
	MESSAGE(STATUS "Found SOIL include dir: ${SOIL_INCLUDE_DIRS}")
ELSE(SOIL_INCLUDE_DIRS)
	MESSAGE(STATUS "Could NOT find SOIL headers.")
ENDIF(SOIL_INCLUDE_DIRS)

IF(SOIL_LIBRARIES)
	MESSAGE(STATUS "Found SOIL library: ${SOIL_LIBRARIES}")
ELSE(SOIL_LIBRARIES)
	MESSAGE(STATUS "Could NOT find SOIL library.")
ENDIF(SOIL_LIBRARIES)

IF(SOIL_INCLUDE_DIRS AND SOIL_LIBRARIES)
	SET(SOIL_FOUND "YES")
ELSE(SOIL_INCLUDE_DIRS AND SOIL_LIBRARIES)
	SET(SOIL_FOUND "NO")
	IF(SOIL_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find SOIL. Please install SOIL")
	ENDIF(SOIL_FIND_REQUIRED)
ENDIF(SOIL_INCLUDE_DIRS AND SOIL_LIBRARIES)
