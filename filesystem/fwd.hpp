#ifndef FILESYSTEM_FWD_HPP
#define FILESYSTEM_FWD_HPP

namespace fs
{
    class filesystem;

    enum class entry_type;
    class directory_entry;

    enum class file_type;
    enum class perms;
    class file_status;

    class directory;

    class directory_iterator;
    class recursive_directory_iterator;

    class file;
    class read_file;
    class write_file;
    class rw_file;

    class filesystem_error;
}                                                              // namespace fs
#endif /* FILESYSTEM_FWD_HPP */