vala_sources = [
  'main.vala',
  'window.vala',
]

deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
  valac.find_library('config', dirs: vapi_dir),
]

gnome = import('gnome')

vala_sources += gnome.compile_resources('vala-hello-world-resources',
  'vala-hello-world.gresource.xml',
  c_name: 'vala_hello_world'
)

c_args = [
  '-DVERSION="@0@"'.format(meson.project_version()),
  '-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()),
  '-DLOCALEDIR="@0@"'.format(join_paths(get_option('prefix'), get_option('localedir')))
]

executable('vala-hello-world', vala_sources,
  vala_args: '--target-glib=2.50',
  dependencies: deps,
  c_args: c_args,
  install: true,
)
