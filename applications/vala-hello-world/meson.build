project('vala-hello-world','c', 'vala',
  version: '0.1.0',
  meson_version: '>= 0.40.0',
)
i18n = import('i18n')

valac = meson.get_compiler('vala')

po_dir = join_paths(meson.source_root(), 'po')
vapi_dir = join_paths (meson.source_root (), 'vapi')

subdir('data')
subdir('src')
subdir('po')
meson.add_install_script('build-aux/meson/postinstall.py')
