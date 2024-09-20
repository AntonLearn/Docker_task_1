Task 1.
1. docker image build . --tag=my_nginx:1.1
2. docker run -d -p 9999:80 my_nginx:1.1 && curl localhost:9999 
