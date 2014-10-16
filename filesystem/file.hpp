#ifndef FILESYSTEM_FILE_HPP
#define FILESYSTEM_FILE_HPP

#include <filesystem/fwd.hpp>

namespace fs
{

    class file
    {
    public:
        file();
        file(file const &);
        file(file &&);

        ~file();

        file & operator=(file const &);
        file & operator=(file &&);

        void close();
    };


    class read_file
    {
    public:
        typedef data_t std::vector<char>;
        typedef offset_t long long;
    public:
        read_file();
        read_file(read_file const &);
        read_file(read_file &&);

        ~read_file();

        read_file & operator=(read_file const &);
        read_file & operator=(read_file &&);

        void close();

        void seek(offset_t);
        offset_t tell() const;
    };


    class write_file
    {
    public:
        typedef data_t std::vector<char>;
        typedef offset_t long long;

    public:
        write_file();
        write_file(write_file const &);
        write_file(write_file &&);

        ~write_file();

        write_file & operator=(write_file const &);
        write_file & operator=(write_file &&);

        void close();

        void write(data_t const &);
        void pwrite(data_t const &, offset_t);

        offset_t tell() const;
        
        void flush();
    };


    class rw_file;
}                                                              // namespace fs
#endif /* FILESYSTEM_FILE_HPP */