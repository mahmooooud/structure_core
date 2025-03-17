// API

class ApiUrl {
  static const getRefreshTokenUrl = 'Auth/GetAccessTokenUsingRefreshToken';
  static const loginApi = 'Auth/Login';
  static const addCustomerApi = 'User/AddCustomer';
  static const addServiceProviderApi = 'User/AddServiceProvider';
  static const addAttachments = 'Attachment/Add';
  static const completeUserDataApi = 'Auth/CustomerCompleteData';
  static const getOrders = 'Order/GetAll';
  static const getCustomerDataApi = 'Order/GetCustomer';
  static const createOrderApi = 'Order/Add';
  static const startOrderApi = 'Order/Start/';
  static const cancelOrderApi = 'Order/Cancel/';
  static const completeOrderApi = 'Order/CompleteOrder';
  static const orderGetOneApi = 'Order/GetOne/';
  static const forgetPasswordApi = 'Auth/ForgetPassword';
  static const checkOtpApi = 'Auth/CheckKey';
  static const resetPasswordApi = 'Auth/ResetPassword';
  static const serviceProviderGetOneApi = 'ServiceProvider/GetOne';
  static const clientGetOneApi = 'Customer/GetOne';
  static const serviceProviderOrderBoardApi = 'ServiceProvider/OrderBoard';
  static const clientOrderBoardApi = 'Customer/OrderBoard';
  static String getAttachmentsUrl(String ids) =>
      'Attachment/DownloadAttachment/$ids';

  static const checkLastOrderRateUrl = 'Order/CheckLastOrderRate';
  static const updateOrderRateUrl = 'Order/UpdateRate';
  static const updateLastOrderRateUrl = 'Order/RateLastOrder';
  static String updateFCMUrl(token) => 'Auth/UpdateFCM?FCMToken=$token';

  static const changePasswordUrl = 'Auth/ChangePassword';
  static const logoutUrl = 'Auth/Logout';
  static const updateLangUrl = 'Auth/UpdateCurrentUserLang';

  static const notificationsUrl = 'UserNotification/GetUserMobileNotification';
  static const readNotificationUrl = 'UserNotification/MobileResetCounter';
  static const getPredefinedMessageListUrl = 'PredefinedMessage/GetAll';
  static const sendChatNotificationUrl = 'Order/ChatNotification';
}
