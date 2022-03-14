FROM python:3.8

#created a shared folder
RUN mkdir /shared/

WORKDIR /nlp_project
COPY . /nlp_project

#RUN apt install lsof
RUN pip install -r requirements.txt

# create a new folder to store the results
# CMD mkdir ./docker_results


# run the python scripts

RUN python /nlp_project/code/IdeaPOC.py
RUN python /nlp_project/code/doclenbaseline.py
RUN python /nlp_project/code/monolingual_cv.py "./Datasets/CZ" "de"
RUN python /nlp_project/code/monolingual_cv.py "./Datasets/CZ" "it"
RUN python /nlp_project/code/monolingual_cv.py "./Datasets/CZ" "cz"
RUN python /nlp_project/code/multi_lingual_no_langfeat.py "./Datasets"
RUN python /nlp_project/code/multi_lingual.py "./Datasets"


# CMD [ "python", "/nlp_project/code/IdeaPOC.py"]

