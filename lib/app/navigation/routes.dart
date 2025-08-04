enum Routes {
  home('HomeRoute', '/home'),
  boot('BootRoute', '/'),
  main('MainRoute', '/main'),
  login('LoginRoute', '/auth/login'),
  register('RegisterRoute', '/auth/register');

  final String name, path;
  const Routes(this.name, this.path);
}
