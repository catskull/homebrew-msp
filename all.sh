for file in ../mspsite/www.macsourceports.com/game/*.html; do
  ruby ../parse.rb "$file"
done
