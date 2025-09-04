FROM tomcat:10.1-jdk17

# Xóa ứng dụng mặc định và thêm cấu hình
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file và đặt tên thành ROOT.war để chạy ở context path /
COPY BTBuoi5.war /usr/local/tomcat/webapps/ROOT.war

# Hoặc nếu muốn giữ context path
# COPY BTBuoi5.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]