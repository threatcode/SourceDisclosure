FROM python:latest

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/threatcode/SourceDisclosure.git
WORKDIR /SourceDisclosure
RUN pip install -r requirements.txt

ENTRYPOINT ["python","SourceDisclosure.py"]
CMD ["--help"]
