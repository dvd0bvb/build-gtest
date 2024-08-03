curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $1" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  $1

dpkg -i libc++-with-msan-v1.0.0.deb