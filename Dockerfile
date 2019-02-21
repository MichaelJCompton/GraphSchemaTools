FROM microsoft/dotnet:2.2-aspnetcore-runtime AS runtime
ADD GraphSchema.0.1.0.tar.gz /
ENTRYPOINT ["/GraphSchema"]
CMD ["--help"]
