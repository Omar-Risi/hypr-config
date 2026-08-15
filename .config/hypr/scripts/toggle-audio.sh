#!/bin/bash
# Cycles to the next available audio sink and shows a notification
# using that device's real PipeWire/PulseAudio description.
#
# Unlike the old version, this has NO hardcoded device-name map --
# it reads descriptions live from `pactl`, so the exact same script
# works on the PC (HyperX headset, Razer mic, HDMI, board audio) and
# on the laptop (built-in speakers, whatever dongle is plugged in)
# without editing anything.

CURRENT=$(pactl get-default-sink)
mapfile -t SINKS < <(pactl list sinks short | awk '{print $2}')

if [[ ${#SINKS[@]} -eq 0 ]]; then
    notify-send "Audio Output" "No sinks found"
    exit 1
fi

for i in "${!SINKS[@]}"; do
    if [[ "${SINKS[$i]}" == "$CURRENT" ]]; then
        NEXT_INDEX=$(((i + 1) % ${#SINKS[@]}))
        NEXT="${SINKS[$NEXT_INDEX]}"
        pactl set-default-sink "$NEXT"

        DESC=$(pactl list sinks | awk -v sink="$NEXT" '
            /^Sink #/ { in_target = 0 }
            $0 ~ "Name: " sink "$" { in_target = 1 }
            in_target && /Description:/ {
                sub(/^[[:space:]]*Description:[[:space:]]*/, "")
                print
                exit
            }
        ')

        notify-send "Audio Output" "Switched to ${DESC:-$NEXT}"
        break
    fi
done
