FROM alpine:3 AS builder

LABEL maintainer="kurtronaldmueller@gmail.com"

RUN apk update && apk add \
  wget \
  unzip

RUN wget https://developer.garmin.com/downloads/fit/sdk/FitSDKRelease_21.40.00.zip -O FitSDK.zip && \
  unzip FitSDK.zip -d FitSDK

FROM openjdk:16-alpine

COPY --from=builder FitSDK/java/FitCSVTool.jar /

ENTRYPOINT [ "java", "-jar", "FitCSVTool.jar" ]

