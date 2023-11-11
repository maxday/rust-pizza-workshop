SECRET=$1
if [ -z "${SECRET}" ]; then
    echo "Please provide a secret"
    exit 1
fi
docker run -it --rm -v $(pwd):/app -e SECRET=${SECRET} maxdayworkshop/rust-workshop