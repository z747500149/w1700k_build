#!/bin/bash
echo "=============================================="
echo "Running custom commands"
mv files/overview.js feeds/luci/applications/luci-app-attendedsysupgrade/htdocs/luci-static/resources/view/attendedsysupgrade/overview.js
mkdir -p feeds/luci/modules/luci-mod-status/patches
mv files/998-single-wiphy.patch feeds/luci/modules/luci-mod-status/patches/998-single-wiphy.patch
mv files/049-TEST-wifi-mt76-mt7996-align-and-resend-beacon-template.patch package/kernel/mt76/patches/049-TEST-wifi-mt76-mt7996-align-and-resend-beacon-template.patch
find feeds/luci/modules/luci-mod-dashboard -name 10_router.js -exec sed -i 's/router\.model\.value/router.release.value/' {} +
echo "=============================================="
