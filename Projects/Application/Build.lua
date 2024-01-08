project "Application"
    kind          "WindowedApp" -- ConsoleApp WindowedApp SharedLib StaticLib
    language      "C++"
    cppdialect    "C++20"
    staticruntime "off"
    characterset  "Unicode"

    targetdir ("%{wks.location}/Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir    ("%{wks.location}/Binaries-Intermediates/" .. OutputDir .. "/%{prj.name}")

    vspropertysettings
    {
    }

    files
    {
        "Application.exe.manifest", "Source/**.cpp", "Source/**.hpp", "Source/**.h", "Source/**.ixx",
    }

    includedirs
    {
        "Source",
    }

    links
    {
        "CoreLibrary",
    }
