#include <Windows.Apis.hpp>

import CoreLibrary;

int WINAPI WinMain(
    _In_     HINSTANCE hInstance,
    _In_opt_ HINSTANCE hPrevInstance,
    _In_     LPSTR     lpCmdLine,
    _In_     int       nCmdShow)
{
    CoreLibrary::PrintHelloWorld();
    return 0;
}
