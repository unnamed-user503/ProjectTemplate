#include "Pch.hpp"
#include "CoreLibrary.Example.hpp"

// Dependencies Include

// Definitions
namespace CoreLibrary
{
    void Example::Greeting(std::string_view message)
    {
        ::MessageBox(nullptr, message.data(), u8"Greeting", MB_OK);
    }
}
