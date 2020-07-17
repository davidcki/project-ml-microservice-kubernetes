FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/

## Step 3:
RUN make install
# hadolint ignore=DL3013

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]
