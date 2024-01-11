#pragma once

// Forward Declarations
namespace CoreLibrary
{
}

// Declarations
namespace CoreLibrary
{
    class Example final
    {
    public:

        Example();
        Example(Example const&);
        Example(Example&&);
        Example& operator = (Example const&);
        Example& operator = (Example&&);
        ~Example();

        void Greeting(std::wstring_view message);

    };
}
