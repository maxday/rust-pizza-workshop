SECRET=$1
SUFFIX=$(tr -dc a-z </dev/urandom | head -c 20 ; echo '')
if [ -z "${SECRET}" ]; then
    echo "Please provide a secret"
    exit 1
fi
echo "Using secret: ${SECRET}"
docker run -it --rm -v $(pwd):/app -e SECRET=${SECRET} -e SUFFIX=${SUFFIX} maxdayworkshop/rust-workshop