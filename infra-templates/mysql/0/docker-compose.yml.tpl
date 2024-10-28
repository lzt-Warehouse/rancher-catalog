version: '2'
services:
  mysql:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: root_password  # 设置root密码
      MYSQL_DATABASE: example_db          # 默认数据库
      MYSQL_USER: user                    # 默认用户
      MYSQL_PASSWORD: user_password       # 用户密码
    ports:
      - "3306:3306"
    volumes:
      - mysql_data:/var/lib/mysql         # 数据持久化存储