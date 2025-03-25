import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          // Choose Language Page
          "1": "اختر اللغة",
          "2": "العربية",
          "3": "الإنجليزية",
          // On Boarding Page
          "4": "اختر منتج",
          "5": "لدينا اكثر من 100 الف منتج. اختر\nمنتجك من متجرنا.",
          "6": "دفع سهل وآمن",
          "7":
              "طريقة دفع سهلة وآمنة،\nتحظى بثقة عملائنا في جميع\nأنحاء العالم.",
          "8": "توصيل سريع",
          "9": "تسليم سريع وموثوق. نقوم\nبتسليم منتجك بأسرع طريقة ممكنة.",
          "10": "إبدأ",
          "11": "تابع",
          // Login Page
          "12": "تسجيل الدخول",
          "13": "الرجاء تسجيل الدخول للمتابعة.",
          "14": "الإيميل",
          "15": "كلمة المرور",
          "16": "نسيت كلمة المرور؟",
          "17": "تسجيل الدخول",
          "18": "ليس لديك حساب؟",
          "19": "سجل الآن",
          // Register Page
          "20": "سجل الآن",
          "21": "الرجاء التسجيل للمتابعة.",
          "22": "الإسم",
          "23": "الإيميل",
          "24": "رقم الهاتف",
          "25": "كلمة المرور",
          "26": "تسجيل",
          "27": "لديك حساب بالفعل؟",
          "28": "تسجيل الدخول",
          // Forgot Password Page
          "29": "نسيت كلمة المرور",
          "30": "الرجاء إدخال بريدك الإلكتروني لإستلام رمز التحقق",
          "31": "الإيميل",
          "32": "ارسال",
          // Verification Page
          "33": "التحقق",
          "34": "الرجاء إدخال رمز التحقق الذي تم ارساله الى بريدك الإلكتروني",
          // Reset Password Page
          "35": "إعادة تعيين كلمة المرور",
          "36": "الرجاء إدخال كلمة مرور جديدة",
          "37": "كلمة المرور",
          "38": "تأكيد كلمة المرور",
          "39": "تعيين",
          // Success Reset Password Page
          "40": "تم إعادة تعيين كلمة المرور بنجاح.",
          "41": "الذهاب الى تسجيل الدخول",
          // Success Register Page
          "42": "تم التسجيل بنجاح.",
          "43": "الذهاب الى تسجيل الدخول",
          // Validation
          "44": "لا يمكن ان يكون هذا الحقل فارغا",
          "45": "الرجاء إدخال بريد إلكنروني صحيح",
          "46": "الرجاء إدخال رقم هاتف صحيح",
          "47": "هذا الحقل لا يمكن ان يكون اقل من",
          "48": "هذا الحقل لا يمكن ان يكون اكثر من",
          // Alert Exit App
          "49": "تأكيد الخروج",
          "50": "هل انت متأكد أنك تريد الخروج؟",
          "51": "لا",
          "52": "نعم",
          // Alert Go To Login
          "53": "الذهاب الى تسجيل الدخول",
          "54": "هل أنت متأكد أنك تريد الذهاب الى صفحة تسجيل الدخول؟",
          "55": "لا",
          "56": "نعم",
          // Alert Wrong Password or Email (login page)
          "57": "تنبيه",
          "58": "البريد الإلكتروني او كلمة المرور غير صحيحة",
          // Alert Email or Phone number already exists (register page)
          "59": "تنبيه",
          "60": "البريد الإلكتروني او رقم الهاتف موجود بالفعل",
          // Alert Verification code
          "61": "تنبيه",
          "62": "رمز التحقق غير صحيح",
          // Alert Verification code (Forgot Password controller page)
          "63": "تنبيه",
          "64": "رمز التحقق غير صحيح",
          // Forgot Password controller page
          "65": "تنبيه",
          "66": "البريد الإلكتروني غير موجود",
          // Reset Password controller page
          "67": "تنبيه",
          "68": "كلمة المرور غير متطابقة",
          "69": "تنبيه",
          "70": "خطأ، حاول مرة أخرى",
        },
        'en': {
          // Choose Language Page
          "1": "Choose Language",
          "2": "Arabic",
          "3": "English",
          // On Boarding Page
          "4": "Choose Product",
          "5": "We have a 100k+ products. Choose\nYour product from our\nshop.",
          "6": "Easy & Safe Payment",
          "7":
              "Easy Checkout & Safe Payment\nmethod. Trusted by our customers\nfrom all overs the world.",
          "8": "Fast Delivery",
          "9":
              "Reliable And Fast Delivery. We\nDeliver your product the fastest\nway possible.",
          "10": "Get Started",
          "11": "Continue",
          // Login Page
          "12": "Login",
          "13": "Please Sign in to continue",
          "14": "Email",
          "15": "Password",
          "16": "Forgot Password?",
          "17": "Sign in",
          "18": "don't have an account?",
          "19": "Register",
          // Register Page
          "20": "Register",
          "21": "Please register to login.",
          "22": "Username",
          "23": "Email",
          "24": "Mobile Number",
          "25": "Password",
          "26": "Sign Up",
          "27": "Already have account?",
          "28": "Sign in",
          // Forgot Password Page
          "29": "Forgot Password",
          "30": "Please enter your email to receive\na verification code",
          "31": "Email",
          "32": "Send",
          // Verification Page
          "33": "Verification",
          "34": "Please enter the code sent to your email.",
          // Reset Password Page
          "35": "Reset Password",
          "36": "Please enter a new password.",
          "37": "Password",
          "38": "Confirm Password",
          "39": "Reset",
          // Success Reset Password Page
          "40": "Password Reset Successfully.",
          "41": "Go to Login",
          // Success Register Page
          "42": "ٌRegistered Successfully.",
          "43": "Go to Login",
          // Validation
          "44": "This can't be empty",
          "45": "Please enter a valid email",
          "46": "Please enter a valid number",
          "47": "This can't be less than",
          "48": "This can't be more than",
          // Alert Exit App
          "49": "Confirm Exit",
          "50": "Are you sure you want to exit?",
          "51": "No",
          "52": "Yes",
          // Alert Go To Login
          "53": "going to Login",
          "54": "Are you sure you want to go to Login page?",
          "55": "No",
          "56": "Yes",
          // Alert Wrong Password or Email (login page)
          "57": "Alert",
          "58": "Wrong Email or Password",
          // Alert Email or Phone number already exists (register page)
          "59": "Alert",
          "60": "Email or Phone number already exists",
          // Alert Verification code (register controller page)
          "61": "Alert",
          "62": "Verification code is incorrect",
          // Alert Verification code (Forgot Password controller page)
          "63": "Alert",
          "64": "Verification code is incorrect",
          // Forgot Password controller page
          "65": "Alert",
          "66": "This Email does not exist",
          // Reset Password controller page
          "67": "Alert",
          "68": "Password does not match",
          "69": "Alert",
          "70": "Error, Try again",
        }
      };
}
