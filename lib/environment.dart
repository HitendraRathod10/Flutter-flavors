enum Environment {
  adminDev,
  adminStage,
  adminProd,
  userDev,
  userStage,
  userProd
}

enum UR {
  admin,
  user
}

class Constants {
  static Map<String, dynamic>? config;
  static UR? ur;

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.adminDev:
        config = Config.adminDevConstants;
        ur = UR.admin;
        break;
      case Environment.adminStage:
        config = Config.adminStgConstants;
        ur = UR.admin;
        break;
      case Environment.adminProd:
        config = Config.adminProdConstants;
        ur = UR.admin;
        break;
      case Environment.userDev:
        config = Config.userDevConstants;
        ur = UR.user;
        break;
      case Environment.userStage:
        config = Config.userStgConstants;
        ur = UR.user;
        break;
      case Environment.userProd:
        config = Config.userProdConstants;
        ur = UR.user;
        break;
    }
  }

  static get serverOne {
    return config![Config.serverOne];
  }

  static get serverTwo {
    return config![Config.serverTwo];
  }

  static get whereAmI {
    return config![Config.whereAmI];
  }

  static get whoAmI {
    return ur;
  }

  static get accessToken {
    return config![Config.accessToken];
  }

  static get appId {
    return config![Config.appId];
  }

  static get appEndPoint {
    return config![Config.appEndPoint];
  }
  
}

class Config {
  static const serverOne = "SERVER_ONE";
  static const serverTwo = "SERVER_TWO";
  static const whereAmI = "WHERE_AM_I";
  static const whoAmI = "WHO_AM_I";
  static const accessToken = "TOKEN";
  static const appId = "APP_ID";
  static const appEndPoint = "END_POINT";

  static Map<String, dynamic> userDevConstants = {
    serverOne: "",
    serverTwo: "",
    whoAmI: "user",
    whereAmI: "development",
    accessToken: "",
    appId: "",
    appEndPoint: ""
  };

  static Map<String, dynamic> userStgConstants = {
    serverOne: "",
    serverTwo: "",
    whoAmI: "user",
    whereAmI: "staging",
    accessToken: "",
    appId: "",
    appEndPoint: ""
  };

  static Map<String, dynamic> userProdConstants = {
    serverOne: "",
    serverTwo: "",
    whoAmI: "user",
    whereAmI: "production",
    accessToken: "",
    appId: "",
    appEndPoint: ""
  };

  static Map<String, dynamic> adminDevConstants = {
    serverOne: "",
    serverTwo: "",
    whoAmI: "admin",
    whereAmI: "development",
    accessToken: "",
    appId: "",
    appEndPoint: ""
  };

  static Map<String, dynamic> adminStgConstants = {
    serverOne: "",
    serverTwo: "",
    whoAmI: "admin",
    whereAmI: "staging",
    accessToken: "",
    appId: "",
    appEndPoint: ""
  };

  static Map<String, dynamic> adminProdConstants = {
    serverOne: "",
    serverTwo: "",
    whoAmI: "admin",
    whereAmI: "production",
    accessToken: "",
    appId: "",
    appEndPoint: ""
  };
}