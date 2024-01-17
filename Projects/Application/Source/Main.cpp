#include "Pch.hpp"
#include "CoreLibrary/CoreLibrary.Example.hpp"

int WINAPI WinMain(
    _In_     HINSTANCE hInstance,
    _In_opt_ HINSTANCE hPrevInstance,
    _In_     LPSTR     lpCmdLine,
    _In_     int       nCmdShow)
{
    std::make_unique<CoreLibrary::Example>()->Greeting(u8"Hello, World!(日本語でも(✿✪‿✪｡)ﾉｺﾝﾁｬ♡)");
    return 0;
}
