#ifndef FILESYSTEM_DIRECTORY_HPP
#define FILESYSTEM_DIRECTORY_HPP

#include <filesystem/fwd.hpp>

namespace fs
{
    class directory
    {
    public:
        directory();
        directory(directory const &);
        directory(directory &&);

        ~directory();

        directory & operator=(directory const &);
        directory & operator=(directory &&);

        directory_iterator begin();
        directory_iterator end();
    };
}                                                               // namespace fs
#endif /* FILESYSTEM_DIRECTORY_HPP */