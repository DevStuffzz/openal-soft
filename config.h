#ifndef CONFIG_H
#define CONFIG_H

/* Define if HRTF data is embedded in the library */
#define ALSOFT_EMBED_HRTF_DATA

/* Define to the library version */
#define ALSOFT_VERSION "1.23.1"

/* Define if we have the Windows backend */
#define HAVE_WASAPI
#define HAVE_WINMM
#define HAVE_DSOUND

/* Define if we have the C11 aligned_alloc function */
/* #undef HAVE_ALIGNED_ALLOC */

/* Define if we have the posix_memalign function */
/* #undef HAVE_POSIX_MEMALIGN */

/* Define if we have SSE CPU extensions */
#define HAVE_SSE
#define HAVE_SSE2
#define HAVE_SSE3
#define HAVE_SSE4_1

/* Define if we have the __get_cpuid function */
/* #undef HAVE___GET_CPUID */

/* Define if we have the cpuid.h header */
/* #undef HAVE_CPUID_H */

/* Define if we have the guiddef.h header */
#define HAVE_GUIDDEF_H

/* Define if we have the initguid.h header */
#define HAVE_INITGUID_H

/* Define if we have the GCC built-in atomic functions */
/* #undef HAVE_GCC_ATOMIC */

/* Define if we have the C11 atomic header */
/* #undef HAVE_C11_ATOMIC */

/* Define if we have Windows headers */
#define HAVE_WINDOWS_H
#define HAVE_MMDEVAPI_H

/* Define if we have dlfcn.h */
/* #undef HAVE_DLFCN_H */

/* Define if we have pthread_np.h */
/* #undef HAVE_PTHREAD_NP_H */

/* Define if we have malloc.h */
#define HAVE_MALLOC_H

/* Define if we have dirent.h */
/* #undef HAVE_DIRENT_H */

/* Define if we have stat function */
#define HAVE_STAT

/* Define if we have lrintf function */
/* #undef HAVE_LRINTF */

/* Define if we have strtof function */
#define HAVE_STRTOF

/* Define if we have strnlen function */
#define HAVE_STRNLEN

/* Define if we have _controlfp function */
#define HAVE__CONTROLFP

/* Define the installation prefix */
#define ALSOFT_INSTALL_PREFIX ""

/* Define if we're on Windows */
#define _WIN32

/* Define if we should use C++17 features */
#define AL_USE_CXX17

/* Restrict keyword */
#define RESTRICT __restrict

/* Size of long */
#define SIZEOF_LONG 4

/* Size of long long */
#define SIZEOF_LONG_LONG 8

#endif /* CONFIG_H */
