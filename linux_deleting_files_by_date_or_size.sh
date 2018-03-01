find . -name "impatt*" -mtime +60 -size +4000k | xargs -i rm {}
