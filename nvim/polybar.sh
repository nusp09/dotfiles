#!/usr/bin/env bash
killall -g polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar
echo "bars launched..."
