

class AppleIcon {
  final String path;
  final String name;

  AppleIcon(this.path, this.name);

  static List<AppleIcon> getIconList() {
    var icons = new List<AppleIcon>();

    icons.add(new AppleIcon("assets/img/PhotosIcon.png", "Photos"));
    icons.add(new AppleIcon("assets/img/AppStoreIcon.png", "App Store"));
    icons.add(new AppleIcon("assets/img/BooksIcon.png", "Books"));
    icons.add(new AppleIcon("assets/img/CalendarIcon.png", "Calendar"));
    icons.add(new AppleIcon("assets/img/CameraIcon.png", "Camera"));
    icons.add(new AppleIcon("assets/img/ClockIcon.png", "Clock"));
    icons.add(new AppleIcon("assets/img/FacetimeIcon.png", "Facetime"));
    icons.add(new AppleIcon("assets/img/HealthIcon.png", "Health"));
    icons.add(new AppleIcon("assets/img/ItunesIcon.png", "Itunes"));
    icons.add(new AppleIcon("assets/img/MailIcon.png", "Mail"));
    icons.add(new AppleIcon("assets/img/MapsIcon.png", "Maps"));
    icons.add(new AppleIcon("assets/img/MessagesIcon.png", "Messages"));
    icons.add(new AppleIcon("assets/img/MusicIcon.png", "Music"));
    icons.add(new AppleIcon("assets/img/NewsIcon.png", "News"));
    icons.add(new AppleIcon("assets/img/NotesIcon.png", "Notes"));
    icons.add(new AppleIcon("assets/img/RemindersIcon.png", "Reminders"));
    icons.add(new AppleIcon("assets/img/SafariIcon.png", "Safari"));
    icons.add(new AppleIcon("assets/img/SettingsIcon.png", "Settings"));
    icons.add(new AppleIcon("assets/img/StocksIcon.png", "Stocks"));
    icons.add(new AppleIcon("assets/img/VideosIcon.png", "Videos"));
    icons.add(new AppleIcon("assets/img/WalletIcon.png", "Wallet"));
    icons.add(new AppleIcon("assets/img/WeatherIcon.png", "Weather"));

    return icons;
  }

}
