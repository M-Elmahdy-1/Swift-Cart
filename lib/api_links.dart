class ApiLinks {
  static const String server = "https://your-domain.com/ecommerce";
  static const String test = "$server/test.php";

  // Auth
  static const String login = "$server/auth/login.php";
  static const String register = "$server/auth/register.php";
  static const String verificationRegister =
      "$server/auth/verificationregister.php";

  // Forgot Password
  static const String forgotPassword =
      "$server/forgotpassword/forgotpassword.php";
  static const String verificationResetPassword =
      "$server/forgotpassword/verificationresetpassword.php";
  static const String resetPassword =
      "$server/forgotpassword/resetpassword.php";
  // Home Page
  static const String homePage = "$server/homepage.php";
}
