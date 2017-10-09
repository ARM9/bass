#pragma once

#include <type_traits>

//pull all type traits used by nall from std namespace into nall namespace
//this removes the requirement to prefix type traits with std:: within nall

namespace nall {
  using std::add_const;
  using std::conditional;
  using std::decay;
  using std::declval;
  using std::enable_if;
  using std::enable_if_t;
  using std::false_type;
  using std::forward;
  using std::initializer_list;
  using std::is_array;
  using std::is_base_of;
  using std::is_function;
  using std::is_integral;
  using std::is_same;
  using std::is_signed;
  using std::is_unsigned;
  using std::move;
  using std::nullptr_t;
  using std::remove_extent;
  using std::remove_reference;
  using std::swap;
  using std::true_type;
}
