class AppLink {
  static const String server = 'http://10.0.2.2/ecommerce';

  //auth
  static const signup = '$server/auth/signup.php';
  static const login = '$server/auth/login.php';

  //forgot password
  static const checkemail = '$server/auth/forgetpassword/check_email.php';
  static const resetpassword = '$server/auth/forgetpassword/reset_password.php';

  //Home
  static const homepage = '$server/home.php';

  //Items
  static const items = '$server/items/view.php';

  //product details
  static const ProductDetails = '$server/productdetails/veiw.php';

  //favorite
  static const favoriteAdd = '$server/favorite/add.php';
  static const favoriteRemove = '$server/favorite/remove.php';
}
