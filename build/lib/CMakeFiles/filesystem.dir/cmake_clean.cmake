FILE(REMOVE_RECURSE
  "../../lib/libfilesystem.pdb"
  "../../lib/libfilesystem.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/filesystem.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
