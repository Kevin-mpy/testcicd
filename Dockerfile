# Use a base image
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Create the script that prints the message
RUN echo -e '#!/bin/sh\nwhile true; do echo "this is kevin test imgs..."; sleep 10; done' > run.sh && chmod +x run.sh

# Set the default command
CMD ["sh", "run.sh"]
