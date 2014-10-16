#ifndef FILESYSTEM_DIRECTORY_ENTRY_HPP
#define FILESYSTEM_DIRECTORY_ENTRY_HPP

#include <filesystem/fwd.hpp>
#include <filesystem/file_status.hpp>

#include <string>

namespace fs
{
    enum class entry_type
    {
        file,
        directory
    };

    class directory_entry
    {
    public:
        directory_entry();
        directory_entry(directory_entry const &);
        directory_entry(directory_entry &&);

        ~directory_entry();

        directory_entry & operator=(directory_entry const &);
        directory_entry & operator=(directory_entry &&);

        entry_type type() const;
        file_status status() const;
        std::string name() const;
    };
}                                                               // namespace fs
#endif /* FILESYSTEM_DIRECTORY_ENTRY_HPP */