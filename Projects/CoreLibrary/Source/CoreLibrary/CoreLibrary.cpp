module;

#include <Windows.Apis.hpp>

module CoreLibrary;

namespace CoreLibrary
{
    void PrintHelloWorld()
    {
        ::MessageBox(NULL, L"Hello, World!", L"CoreLibrary", MB_OK);
    }
}
