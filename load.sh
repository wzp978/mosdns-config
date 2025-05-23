HOST="http://192.168.31.5"
rm -rf mosdns/
mkdir mosdns
curl "${HOST}/update.sh" -o mosdns/update.sh
curl "${HOST}/init-dnsmasq.sh" -o mosdns/init-dnsmasq.sh
curl "${HOST}/reinstall.sh" -o mosdns/reinstall.sh
curl "${HOST}/config.yaml" -o mosdns/config.yaml
curl "${HOST}/dns.yaml" -o mosdns/dns.yaml
chmod +x mosdns/update.sh
chmod +x mosdns/init-dnsmasq.sh
chmod +x mosdns/reinstall.sh
