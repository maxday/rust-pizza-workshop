SECRET=$1
if [ -z "${SECRET}" ]; then
    echo "Please provide a secret"
    exit 1
fi
echo "Using secret: ${SECRET}"
docker run -it --rm -v $(pwd):/app -e SECRET=${SECRET} maxday/rust-workshop