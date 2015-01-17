#ifdef NALL_STRING_INTERNAL_HPP

//collection of functions to extend libc
//none of these functions require nall::string
//and thus, require no changes when nall::string is modified

namespace nall {

//compare.hpp
inline char chrlower(char c);
inline char chrupper(char c);
inline int imemcmp(const char* str1, const char* str2, unsigned size);
inline int istrcmp(const char* str1, const char* str2);
inline bool strbegin(const char* str, const char* key);
inline bool istrbegin(const char* str, const char* key);
inline bool strend(const char* str, const char* key);
inline bool istrend(const char* str, const char* key);

//convert.hpp
inline char* strlower(char* str);
inline char* strupper(char* str);
inline char* qstrlower(char* str);
inline char* qstrupper(char* str);
inline char* strtr(char* dest, const char* before, const char* after);

//match.hpp
inline bool strmatch(const char* str, const char* pattern);
inline bool istrmatch(const char* str, const char* pattern);
inline bool tokenize(const char* s, const char* p);

//strm.hpp
inline unsigned strmcpy(char* target, const char* source, unsigned length);
inline unsigned strmcat(char* target, const char* source, unsigned length);
inline bool strccpy(char* target, const char* source, unsigned length);
inline bool strccat(char* target, const char* source, unsigned length);
inline void strpcpy(char*& target, const char* source, unsigned& length);

//strpos.hpp
inline maybe<unsigned> strpos(const char* str, const char* key);
inline maybe<unsigned> istrpos(const char* str, const char* key);
inline maybe<unsigned> qstrpos(const char* str, const char* key);
inline maybe<unsigned> iqstrpos(const char* str, const char* key);
template<bool Insensitive = false, bool Quoted = false> inline maybe<unsigned> ustrpos(const char* str, const char* key);

//trim.hpp
template<unsigned Limit = 0> inline char* ltrim(char* str, const char* key = " ");
template<unsigned Limit = 0> inline char* rtrim(char* str, const char* key = " ");
template<unsigned Limit = 0> inline char* trim(char* str, const char* key = " ");
template<unsigned Limit = 0> inline char* trim(char* str, const char* lkey, const char* rkey);
inline char* strip(char* s);

//utf8.hpp
struct UTF8 {
  unsigned size;       //size of encoded codepoint
  uint64_t data;       //encoded codepoint
  unsigned codepoint;  //decoded codepoint
};
inline UTF8 utf8_read(const char* s);
inline void utf8_write(char* s, const UTF8& utf8);

//utility.hpp
template<bool Insensitive> alwaysinline bool chrequal(char x, char y);
template<bool Quoted, typename T> alwaysinline bool quoteskip(T*& p);
template<bool Quoted, typename T> alwaysinline bool quotecopy(char*& t, T*& p);
inline char* strduplicate(const char* s);

}

#endif
