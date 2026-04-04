CURSOR=0
while [ "$CURSOR" -ne 0 ]; do
    read -r CURSOR_OUT KEYS_OUT <<< $(redis-cli SCAN "$CURSOR")
    CURSOR=$CURSOR_OUT
    for key in $KEYS_OUT; do
        type=$(redis-cli TYPE "$key")
        echo "Key: $key, Type: $type"
        case "$type" in
            string) redis-cli GET "$key";;
            hash) redis-cli HGETALL "$key";;
            list) redis-cli LRANGE "$key" 0 -1;;
            set) redis-cli SMEMBERS "$key";;
            zset) redis-cli ZRANGE "$key" 0 -1 WITHSCORES;;
        esac
    done
done
