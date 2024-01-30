#pragma once

// Forward Declarations
namespace CoreLibrary
{
}

// Dependencies Include

// Declarations
namespace CoreLibrary
{
    class Example final
    {
    public: // special member functions

        // ctor
        Example() = default;

        // copy
        Example(Example const&) = delete;
        Example& operator = (Example const&) = delete;

        // move
        Example(Example&&) = default;
        Example& operator = (Example&&) = default;

        // dtor
        ~Example() = default;

    public: // member functions

        void Greeting(std::string_view message);

    private: // member variables

    };
}
