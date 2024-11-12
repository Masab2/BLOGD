class AppUrl {
  static String baseUrl = "http://192.168.2.74:8000/";

  // Login Url
  static String loginUrl = "${baseUrl}user/login";

  // get All Blogs
  static String getAllBlogs = "${baseUrl}api/getAllBlogs";

  // Get All Categories
  static String getAllCategories = "${baseUrl}api/getAllCategories";

  // Create Blog url
  static String createBlogUrl = "${baseUrl}api/createBlog";

  // get Blogs By Id
  static String getBlogsById(blogId) =>
      "${baseUrl}api/getBlogById?blogId=$blogId";

  static String buildUrlImage(String image) {
    return "${baseUrl}img/$image";
  }

  // Notification Api url
  static String getNotificationUrl(userId) =>
      "${baseUrl}api/getUserNotifications?userId=$userId";

  // Google Gemmine Ai Api key
  static String getGemmineApiKey = "AIzaSyC9FL3rlp2V6QwkikjNHkqbfw3ztUm4_fw";

  // ChatUrl Google Gemmine Ai Url
  static String getGemmineChatUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=$getGemmineApiKey";
}
