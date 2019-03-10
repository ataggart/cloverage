#/bin/sh

CLOVERAGE_VERSION=$(head -1 cloverage/project.clj | cut -d' ' -f3)
LEIN_CLOVERAGE_VERSION=$(head -1 lein-cloverage/project.clj | cut -d' ' -f3)

if [ $CLOVERAGE_VERSION != $LEIN_CLOVERAGE_VERSION ]; then
    echo "Inconsistent versions."
    echo "        cloverage: $CLOVERAGE_VERSION"
    echo "   lein-cloverage: $LEIN_CLOVERAGE_VERSION"
    exit 1
fi
