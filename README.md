# garmin-fit-sdk-dockerfile

Convert Garmin fit files into csvs.


## Usage

```bash
docker run --rm \
  --mount type=bind,source="$(pwd)"/fits,destination=/fits \
  fit-sdk /fits/Carson.fit

docker run --rm \
  --mount type=bind,source="$(pwd)"/fits,destination=/fits \
  fit-sdk java -jar FitCSVTool.jar /fits/Carson.fit
```