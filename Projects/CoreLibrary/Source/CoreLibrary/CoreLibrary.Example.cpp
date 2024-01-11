#include "Pch.hpp"
#include "CoreLibrary.Example.hpp"

// Dependencies Include

// Defines
namespace CoreLibrary
{
    Example::Example() = default;
    Example::Example(Example const&) = default;
    Example::Example(Example&&) = default;
    Example& Example::operator = (Example const&) = default;
    Example& Example::operator = (Example&&) = default;
    Example::~Example() = default;

    void Example::Greeting(std::wstring_view message)
    {
        ::MessageBox(nullptr, message.data(), L"Greeting", MB_OK);
    }
}
