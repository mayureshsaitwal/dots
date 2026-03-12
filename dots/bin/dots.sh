for dir in ~/dots/.config/*; do
  ln -sf "$dir" "~/.config/$(basename "$dir")"
done



