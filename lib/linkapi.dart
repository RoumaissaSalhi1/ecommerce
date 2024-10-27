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
}
