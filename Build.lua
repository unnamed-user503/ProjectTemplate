workspace "Workspace"
    architecture "x86_64"
    startproject "Application"

    configurations
    {
        "Debug", "Release", "Distribute",
    }

    flags
    {
        -- "MultiProcessorCompile"
    }

    defines
    {
    }

    filter "system:windows"
        systemversion "latest"

        buildoptions
        {
            "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus", "/utf-8",
        }

        defines
        {
            "_WINDOWS"
        }

    filter "configurations:Debug"
        runtime  "Debug"
        symbols  "On"
        optimize "Off"

        defines
        {
            "_DEBUG"
        }

    filter "configurations:Release"
        runtime  "Release"
        symbols  "On"
        optimize "On"

        defines
        {
            "NDEBUG"
        }

    filter "configurations:Distribute"
        runtime  "Release"
        symbols  "Off"
        optimize "On"

        defines
        {
            "NDEBUG"
        }

OutputDir = "%{cfg.architecture}-%{cfg.system}-%{cfg.buildcfg:lower()}"

include "Vendor/Premake5/Customization/Core.lua"

group "Dependencies"
    include "Projects/CoreLibrary/Build.lua"
group ""

include "Projects/Application/Build.lua"
