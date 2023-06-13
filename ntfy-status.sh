#!/bin/sh

if [ -z "$NTFY_TOPIC_URL" ] || [ -z "$NTFY_USERNAME" ] || [ -z "$NTFY_PASSWORD" ]; then
    echo "Error: NTFY_TOPIC_URL, NTFY_USERNAME, and NTFY_PASSWORD must be set"
    exit 1
fi


case "$1" in
    started)
        curl -X POST -u "$NTFY_USERNAME:$NTFY_PASSWORD" -d "🐳 Started!" $NTFY_TOPIC_URL
        ;;
    stopped)
        curl -X POST -u "$NTFY_USERNAME:$NTFY_PASSWORD" -d "🐳 Stopped!" $NTFY_TOPIC_URL
        ;;
    *)
        echo "Usage: $0 {started|stopped}"
        exit 1
        ;;
esac

exit 0