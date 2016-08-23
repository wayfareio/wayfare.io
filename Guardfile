guard :sass, output: 'assets/stylesheets',
             style: :compressed,
             all_on_start: true,
             load_paths: ['_assets/components', '_assets/stylesheets'] do
  watch(%r{_assets/stylesheets/(.+)\.scss$})
end

guard :sprockets, destination: 'assets/javascripts',
                  asset_paths: ['_assets/components', '_assets/javascripts'],
                  root_file: ['assets/javascripts/public.js'],
                  minify: true do
  watch(%r{^_assets/javascripts/(.*)\.js$})
end

guard :copy, from: '_assets/images',
             to: 'assets/images',
             mkpath: true,
             delete: true,
             run_at_start: true do
  watch(%r{^_assets/images/.+$})
end

guard :copy, from: '_assets/fonts',
             to: 'assets/fonts',
             mkpath: true,
             delete: true,
             run_at_start: true do
  watch(%r{^_assets/fonts/.+$})
end

guard :copy, from: '_assets/components/font-awesome/fonts',
             to: 'assets/fonts',
             mkpath: true,
             delete: true,
             run_at_start: true do
  watch(%r{^_assets/components/font-awesome/fonts/.+$})
end

guard :livereload do
  extensions = {
    css: :css,
    scss: :css,
    sass: :css,
    js: :js,
    coffee: :js,
    html: :html,
    png: :png,
    gif: :gif,
    jpg: :jpg,
    jpeg: :jpeg
  }
  watch(%r{_site/.+\.(#{extensions.values.uniq * '|'})})
end
