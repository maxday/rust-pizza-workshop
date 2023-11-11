# Clone this repo
```bash
git clone git@github.com:maxday/duke-rust-workshop.git && cd duke-rust-workshop
```
(TODO replace with https when public)

# Run the env
```bash
./run.sh <SECRET>
```

# Create your first Lambda Function
```bash
cargo lambda new --template https://github.com/maxday/rust-workshop --no-interactive hello-${SUFFIX}
```

# Enter your hello function directory
```bash
cd hello-${SUFFIX}
```

# Build!
```bash
cargo lambda build
```

# Deploy!
```bash
cargo lambda deploy --iam-role $DEPLOY_ROLE_ARN
```

# Invoke your function using the aws-cli!
```bash
cargo lambda invoke --remote hello-${SUFFIX} --data-ascii '{ "message": "Hello from workshop!" }'
```

# Let's create a Function url
```bash
cargo lambda deploy --iam-role $DEPLOY_ROLE_ARN --enable-function-url
```

# Invoke your function using URL 
```bash
curl -v 'REPLACE_WITH_YOUR_FUNCTION_URL' \
-H 'content-type: application/json' \
-d '{ "example": "test" }'`
```