FROM       opekjdk:11 
# Generate the artifacts locally and copy them here 
RUN        mkdir /app 
WORKDIR    /app  
COPY       target/shipping-1.0.jar app/shipping.jar
ENTRYPOINT [ "java" , "-jar" , "shipping.jar" ]