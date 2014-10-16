#ifndef FILESYSTEM_DIRECTORY_ITERATOR_HPP
#define FILESYSTEM_DIRECTORY_ITERATOR_HPP

#include <filesystem/fwd.hpp>
#include <filesystem/directory.hpp>
#include <filesystem/directory_entry.hpp>

namespace fs
{

    class directory_iterator
    {
    public:
        directory_iterator();
        directory_iterator(directory const &);
        directory_iterator(directory_iterator const &);
        directory_iterator(directory_iterator &&);

        ~directory_iterator();

        directory_iterator & operator=(directory_iterator const &);
        directory_iterator & operator=(directory_iterator &&);

        directory_iterator & operator++();
        directory_iterator & increment();

        directory_entry const & operator*() const;
        directory_entry const * operator->() const;
    };


    class recursive_directory_iterator
    {
    public:
        recursive_directory_iterator();
        recursive_directory_iterator(directory const &);
        recursive_directory_iterator(recursive_directory_iterator const &);
        recursive_directory_iterator(recursive_directory_iterator &&);

        ~recursive_directory_iterator();

        recursive_directory_iterator & operator=(recursive_directory_iterator const &);
        recursive_directory_iterator & operator=(recursive_directory_iterator &&);

        recursive_directory_iterator & operator++();
        recursive_directory_iterator & increment();

        directory_entry const & operator*() const;
        directory_entry const * operator->() const;

        void pop();
        void disable_recursion_pending();

        int depth() const;
        bool recursion_pending() const;
    };
}                                                               // namespace fs
#endif /* FILESYSTEM_DIRECTORY_ITERATOR_HPP */