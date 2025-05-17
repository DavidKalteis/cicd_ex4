FROM golang:1.20-alpine

# Set maintainer label
LABEL author="s2410455001@fhooe.at"

# Set working directory
WORKDIR /src

# Copy source code
COPY . .

# List directory contents (debugging)
RUN ls -la

# Build the Go app
RUN go build -o /usr/myapp main.go

# Expose port
EXPOSE 8888

# Run the app
CMD ["/usr/myapp"]