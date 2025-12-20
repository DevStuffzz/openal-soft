-- OpenAL-soft library
project "OpenAL"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/AL/**.h",
        "al/*.cpp",
        "al/*.h",
        "alc/*.cpp",
        "alc/*.h",
        "alc/backends/base.cpp",
        "alc/backends/loopback.cpp",
        "alc/backends/null.cpp",
        "common/*.cpp",
        "common/*.h",
        "core/*.cpp",
        "core/*.h",
        "core/mixer/*.cpp",
        "core/filters/*.cpp",
    }

    -- Exclude platform-specific backends we don't need
    removefiles
    {
        "alc/backends/alsa.cpp",
        "alc/backends/coreaudio.cpp",
        "alc/backends/jack.cpp",
        "alc/backends/oboe.cpp",
        "alc/backends/opensl.cpp",
        "alc/backends/oss.cpp",
        "alc/backends/pipewire.cpp",
        "alc/backends/portaudio.cpp",
        "alc/backends/pulseaudio.cpp",
        "alc/backends/sdl2.cpp",
        "alc/backends/sdl3.cpp",
        "alc/backends/sndio.cpp",
        "alc/backends/solaris.cpp",
        "common/polyphase_resampler.cpp", -- Requires C++20
    }

    includedirs
    {
        ".",
        "include",
        "include/AL",
        "common",
        "alc",
    }

    defines
    {
        "AL_LIBTYPE_STATIC",
        "AL_ALEXT_PROTOTYPES",
        "RESTRICT=__restrict",
    }

    filter "system:windows"
        systemversion "latest"

        files
        {
            "alc/backends/wasapi.cpp",
            "alc/backends/winmm.cpp",
            "alc/backends/dsound.cpp",
        }

        defines
        {
            "_WIN32",
            "_WINDOWS",
            "WIN32",
            "_CRT_SECURE_NO_WARNINGS",
            "NOMINMAX",
        }

        links
        {
            "winmm",
            "ole32",
            "shell32",
            "user32",
        }

        disablewarnings
        {
            "4244", -- conversion from 'type1' to 'type2', possible loss of data
            "4267", -- conversion from 'size_t' to 'type', possible loss of data  
            "4305", -- truncation from 'double' to 'float'
            "4996", -- deprecated functions
            "4068", -- unknown pragma
        }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"

