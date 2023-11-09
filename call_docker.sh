docker build -t my-python-analysis1 .
docker run -v /home/sasidhar/docker_demo2:/app/input -v /home/sasidhar/docker_demo2/output:/app/output my-python-analysis1 python ./run_me.py

docker run -it -v /home/sasidhar/docker_demo2:/app/input -v /home/sasidhar/docker_demo2/output:/app/output my-python-analysis1 bash

screen -S demo_on_slytherin -dm bash -c 'docker run -it -v /home/sasidhar/docker_demo2:/app/input -v /home/sasidhar/docker_demo2/output:/app/output my-python-analysis1 python ./run_me.py'



#docker run -v /path/to/local/input:/app/input -v /path/to/local/output:/app/output my-python-analysis python ./analysis.py
