class Company {
  String id;
  String type;
  Attributes attributes;

  Company({this.id, this.type, this.attributes});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    if (this.attributes != null) {
      data['attributes'] = this.attributes.toJson();
    }
    return data;
  }
}

class Attributes {
  String name;
  String title;
  String slogan;
  String phone;
  String email;
  MapConfig mapConfig;
  String address;
  String notice;
  String updatedAt;
  String styles;
  String facebookPixelId;
  String googleAnalyticsId;
  String tawktoId;
  bool tourEnabled;
  bool visaEnabled;
  bool visaGuideEnabled;
  bool walletEnabled;
  bool otpEnabled;
  Navigation navigation;
  PaymentGateways paymentGateways;
  Logo logo;
  Favicon favicon;
  List<Routes> routes;
  List<Promos> promos;
  Facebook facebook;
  Social social;
  Omniauth omniauth;

  Attributes(
      {this.name,
        this.title,
        this.slogan,
        this.phone,
        this.email,
        this.mapConfig,
        this.address,
        this.notice,
        this.updatedAt,
        this.styles,
        this.facebookPixelId,
        this.googleAnalyticsId,
        this.tawktoId,
        this.tourEnabled,
        this.visaEnabled,
        this.visaGuideEnabled,
        this.walletEnabled,
        this.otpEnabled,
        this.navigation,
        this.paymentGateways,
        this.logo,
        this.favicon,
        this.routes,
        this.promos,
        this.facebook,
        this.social,
        this.omniauth});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    slogan = json['slogan'];
    phone = json['phone'];
    email = json['email'];
    mapConfig = json['map_config'] != null
        ? new MapConfig.fromJson(json['map_config'])
        : null;
    address = json['address'];
    notice = json['notice'];
    updatedAt = json['updated_at'];
    styles = json['styles'];
    facebookPixelId = json['facebook_pixel_id'];
    googleAnalyticsId = json['google_analytics_id'];
    tawktoId = json['tawkto_id'];
    tourEnabled = json['tour_enabled'];
    visaEnabled = json['visa_enabled'];
    visaGuideEnabled = json['visa_guide_enabled'];
    walletEnabled = json['wallet_enabled'];
    otpEnabled = json['otp_enabled'];
    navigation = json['navigation'] != null
        ? new Navigation.fromJson(json['navigation'])
        : null;
    paymentGateways = json['payment_gateways'] != null
        ? new PaymentGateways.fromJson(json['payment_gateways'])
        : null;
    logo = json['logo'] != null ? new Logo.fromJson(json['logo']) : null;
    favicon =
    json['favicon'] != null ? new Favicon.fromJson(json['favicon']) : null;
    if (json['routes'] != null) {
      routes = new List<Routes>();
      json['routes'].forEach((v) {
        routes.add(new Routes.fromJson(v));
      });
    }
    if (json['promos'] != null) {
      promos = new List<Promos>();
      json['promos'].forEach((v) {
        promos.add(new Promos.fromJson(v));
      });
    }
    facebook = json['facebook'] != null
        ? new Facebook.fromJson(json['facebook'])
        : null;
    social =
    json['social'] != null ? new Social.fromJson(json['social']) : null;
    omniauth = json['omniauth'] != null
        ? new Omniauth.fromJson(json['omniauth'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['slogan'] = this.slogan;
    data['phone'] = this.phone;
    data['email'] = this.email;
    if (this.mapConfig != null) {
      data['map_config'] = this.mapConfig.toJson();
    }
    data['address'] = this.address;
    data['notice'] = this.notice;
    data['updated_at'] = this.updatedAt;
    data['styles'] = this.styles;
    data['facebook_pixel_id'] = this.facebookPixelId;
    data['google_analytics_id'] = this.googleAnalyticsId;
    data['tawkto_id'] = this.tawktoId;
    data['tour_enabled'] = this.tourEnabled;
    data['visa_enabled'] = this.visaEnabled;
    data['visa_guide_enabled'] = this.visaGuideEnabled;
    data['wallet_enabled'] = this.walletEnabled;
    data['otp_enabled'] = this.otpEnabled;
    if (this.navigation != null) {
      data['navigation'] = this.navigation.toJson();
    }
    if (this.paymentGateways != null) {
      data['payment_gateways'] = this.paymentGateways.toJson();
    }
    if (this.logo != null) {
      data['logo'] = this.logo.toJson();
    }
    if (this.favicon != null) {
      data['favicon'] = this.favicon.toJson();
    }
    if (this.routes != null) {
      data['routes'] = this.routes.map((v) => v.toJson()).toList();
    }
    if (this.promos != null) {
      data['promos'] = this.promos.map((v) => v.toJson()).toList();
    }
    if (this.facebook != null) {
      data['facebook'] = this.facebook.toJson();
    }
    if (this.social != null) {
      data['social'] = this.social.toJson();
    }
    if (this.omniauth != null) {
      data['omniauth'] = this.omniauth.toJson();
    }
    return data;
  }
}

class MapConfig {
  String latitude;
  String longitude;
  String url;
  String apiKey;

  MapConfig({this.latitude, this.longitude, this.url, this.apiKey});

  MapConfig.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    url = json['url'];
    apiKey = json['api_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['url'] = this.url;
    data['api_key'] = this.apiKey;
    return data;
  }
}

class Navigation {
  List<Header> header;
  HeaderAuth headerAuth;
  List<Sidebar> sidebar;
  Footer footer;

  Navigation({this.header, this.headerAuth, this.sidebar, this.footer});

  Navigation.fromJson(Map<String, dynamic> json) {
    if (json['header'] != null) {
      header = new List<Header>();
      json['header'].forEach((v) {
        header.add(new Header.fromJson(v));
      });
    }
    headerAuth = json['header_auth'] != null
        ? new HeaderAuth.fromJson(json['header_auth'])
        : null;
    if (json['sidebar'] != null) {
      sidebar = new List<Sidebar>();
      json['sidebar'].forEach((v) {
        sidebar.add(new Sidebar.fromJson(v));
      });
    }
    footer =
    json['footer'] != null ? new Footer.fromJson(json['footer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.header != null) {
      data['header'] = this.header.map((v) => v.toJson()).toList();
    }
    if (this.headerAuth != null) {
      data['header_auth'] = this.headerAuth.toJson();
    }
    if (this.sidebar != null) {
      data['sidebar'] = this.sidebar.map((v) => v.toJson()).toList();
    }
    if (this.footer != null) {
      data['footer'] = this.footer.toJson();
    }
    return data;
  }
}

class Header {
  String title;
  String link;
  bool enabled;
  bool external;
  String route;

  Header({this.title, this.link, this.enabled, this.external, this.route});

  Header.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    link = json['link'];
    enabled = json['enabled'];
    external = json['external'];
    route = json['route'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['link'] = this.link;
    data['enabled'] = this.enabled;
    data['external'] = this.external;
    data['route'] = this.route;
    return data;
  }
}

class HeaderAuth {
  Guest guest;
  User user;

  HeaderAuth({this.guest, this.user});

  HeaderAuth.fromJson(Map<String, dynamic> json) {
    guest = json['guest'] != null ? new Guest.fromJson(json['guest']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.guest != null) {
      data['guest'] = this.guest.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class Guest {
  String title;
  String route;
  bool enabled;

  Guest({this.title, this.route, this.enabled});

  Guest.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    route = json['route'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['route'] = this.route;
    data['enabled'] = this.enabled;
    return data;
  }
}

class User {
  String title;
  String out;
 // List<Drop> drop;

  User({this.title, this.out});

  User.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    out = json['out'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['out'] = this.out;
    return data;
  }
}


class Sidebar {
  String title;
  String route;
  bool enabled;
  bool external;

  Sidebar({this.title, this.route, this.enabled, this.external});

  Sidebar.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    route = json['route'];
    enabled = json['enabled'];
    external = json['external'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['route'] = this.route;
    data['enabled'] = this.enabled;
    data['external'] = this.external;
    return data;
  }
}

class Footer {
  List<Widgets> widgets;

  Footer({this.widgets});

  Footer.fromJson(Map<String, dynamic> json) {
    if (json['widgets'] != null) {
      widgets = new List<Widgets>();
      json['widgets'].forEach((v) {
        widgets.add(new Widgets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.widgets != null) {
      data['widgets'] = this.widgets.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Widgets {
  String title;
  String type;
  List<Menu> menu;

  Widgets({this.title, this.type, this.menu});

  Widgets.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    if (json['menu'] != null) {
      menu = new List<Menu>();
      json['menu'].forEach((v) {
        menu.add(new Menu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    if (this.menu != null) {
      data['menu'] = this.menu.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Menu {
  String title;
  String route;
  bool enabled;
  Auth auth;
  String action;
  bool external;

  Menu(
      {this.title,
        this.route,
        this.enabled,
        this.auth,
        this.action,
        this.external});

  Menu.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    route = json['route'];
    enabled = json['enabled'];
    auth = json['auth'] != null ? new Auth.fromJson(json['auth']) : null;
    action = json['action'];
    external = json['external'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['route'] = this.route;
    data['enabled'] = this.enabled;
    if (this.auth != null) {
      data['auth'] = this.auth.toJson();
    }
    data['action'] = this.action;
    data['external'] = this.external;
    return data;
  }
}

class Auth {
  bool login;

  Auth({this.login});

  Auth.fromJson(Map<String, dynamic> json) {
    login = json['login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    return data;
  }
}

class PaymentGateways {
  Sslcommerz sslcommerz;

  PaymentGateways({this.sslcommerz});

  PaymentGateways.fromJson(Map<String, dynamic> json) {
    sslcommerz = json['sslcommerz'] != null
        ? new Sslcommerz.fromJson(json['sslcommerz'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sslcommerz != null) {
      data['sslcommerz'] = this.sslcommerz.toJson();
    }
    return data;
  }
}

class Sslcommerz {
  String title;
  String imageSrc;
  String imageSrcSet;

  Sslcommerz({this.title, this.imageSrc, this.imageSrcSet});

  Sslcommerz.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imageSrc = json['image_src'];
    imageSrcSet = json['image_src_set'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image_src'] = this.imageSrc;
    data['image_src_set'] = this.imageSrcSet;
    return data;
  }
}

class Logo {
  String main;
  String alternate;
  String grayscale;

  Logo({this.main, this.alternate, this.grayscale});

  Logo.fromJson(Map<String, dynamic> json) {
    main = json['main'];
    alternate = json['alternate'];
    grayscale = json['grayscale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['main'] = this.main;
    data['alternate'] = this.alternate;
    data['grayscale'] = this.grayscale;
    return data;
  }
}

class Favicon {
  String s16x16;
  String s24x24;
  String s32x32;
  String s64x64;

  Favicon({this.s16x16, this.s24x24, this.s32x32, this.s64x64});

  Favicon.fromJson(Map<String, dynamic> json) {
    s16x16 = json['16x16'];
    s24x24 = json['24x24'];
    s32x32 = json['32x32'];
    s64x64 = json['64x64'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['16x16'] = this.s16x16;
    data['24x24'] = this.s24x24;
    data['32x32'] = this.s32x32;
    data['64x64'] = this.s64x64;
    return data;
  }
}

class Routes {
  int id;
  String cover;
  String label;
  String origin;
  String destination;
  Null departureAt;
  Null arriveAt;
  bool featuredDestination;
  bool popularRoute;
  bool domestic;

  Routes(
      {this.id,
        this.cover,
        this.label,
        this.origin,
        this.destination,
        this.departureAt,
        this.arriveAt,
        this.featuredDestination,
        this.popularRoute,
        this.domestic});

  Routes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cover = json['cover'];
    label = json['label'];
    origin = json['origin'];
    destination = json['destination'];
    departureAt = json['departure_at'];
    arriveAt = json['arrive_at'];
    featuredDestination = json['featured_destination'];
    popularRoute = json['popular_route'];
    domestic = json['domestic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['label'] = this.label;
    data['origin'] = this.origin;
    data['destination'] = this.destination;
    data['departure_at'] = this.departureAt;
    data['arrive_at'] = this.arriveAt;
    data['featured_destination'] = this.featuredDestination;
    data['popular_route'] = this.popularRoute;
    data['domestic'] = this.domestic;
    return data;
  }
}

class Promos {
  String image;
  String url;
  String label;
  bool newTab;

  Promos({this.image, this.url, this.label, this.newTab});

  Promos.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    url = json['url'];
    label = json['label'];
    newTab = json['new_tab'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['url'] = this.url;
    data['label'] = this.label;
    data['new_tab'] = this.newTab;
    return data;
  }
}

class Facebook {
  Null appId;
  Null pageId;

  Facebook({this.appId, this.pageId});

  Facebook.fromJson(Map<String, dynamic> json) {
    appId = json['app_id'];
    pageId = json['page_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['app_id'] = this.appId;
    data['page_id'] = this.pageId;
    return data;
  }
}

class Social {
  String facebook;
  String twitter;
  String linkedin;
  String instagram;

  Social({this.facebook, this.twitter, this.linkedin, this.instagram});

  Social.fromJson(Map<String, dynamic> json) {
    facebook = json['facebook'];
    twitter = json['twitter'];
    linkedin = json['linkedin'];
    instagram = json['instagram'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facebook'] = this.facebook;
    data['twitter'] = this.twitter;
    data['linkedin'] = this.linkedin;
    data['instagram'] = this.instagram;
    return data;
  }
}

class Omniauth {
  bool facebook;
  bool google;
  bool yahoo;

  Omniauth({this.facebook, this.google, this.yahoo});

  Omniauth.fromJson(Map<String, dynamic> json) {
    facebook = json['facebook'];
    google = json['google'];
    yahoo = json['yahoo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facebook'] = this.facebook;
    data['google'] = this.google;
    data['yahoo'] = this.yahoo;
  }
}