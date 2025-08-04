enum Routes {
  home('HomeRoute', '/home'),
  boot('BootRoute', '/'),
  splash('SplashRoute', '/splash'),
  main('MainRoute', '/main'),
  explore('ExploreRoute', '/explore'),
  login('LoginRoute', '/auth/login'),
  signup('SignupRoute', '/auth/signup');

  final String name, path;
  const Routes(this.name, this.path);
}
