project "Application"
    kind          "WindowedApp" -- ConsoleApp WindowedApp SharedLib StaticLib
    language      "C++"
    cppdialect    "C++17"
    staticruntime "off"
    characterset  "Unicode"

    pchheader "Pch.hpp"
    pchsource "Source/Pch.cpp"

    targetdir ("%{wks.location}/Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir    ("%{wks.location}/Binaries-Intermediates/" .. OutputDir .. "/%{prj.name}")

    vspropertysettings
    {
        -- VcpkgTriplet = "x64-windows-static",
        -- VcpkgEnabled = "true",
        -- PublicIncludeDirectories = "Source",
        -- PublicModuleDirectories  = "Source",
        -- AllProjectBMIsArePublic  = "true",
    }

    vsadditionalprops
    {
    }

    vsadditionaltargets
    {
    }

    nuget
    {
        -- "Microsoft.Windows.ImplementationLibrary:1.0.231216.1",
        -- "Microsoft.Windows.SDK.BuildTools:10.0.22621.2428",
        -- "Microsoft.Windows.CppWinRT:2.0.230706.1",
        -- "Microsoft.WindowsAppSDK:1.4.231115000",
        -- "Microsoft.Graphics.Win2D:1.1.1",
    }

    files
    {
        "Application.exe.manifest", "Source/**.cpp", "Source/**.hpp", "Source/**.h",
    }

    includedirs
    {
        "Source",
    }

    links
    {
        "CoreLibrary",
    }

    prebuildcommands
    {
    }

    postbuildcommands
    {
    }
