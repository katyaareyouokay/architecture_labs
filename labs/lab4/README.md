# Лабораторная работа 4

1. Список сервисов, которые опрашивает Prometheus:
![alt text](images/image.png)

2. Дашборды Графаны:
![alt text](images/image8.png)
![alt text](images/image9.png)
![alt text](images/image10.png)
s
3. Настроенные алерты:
![alt text](images/image1.png)

4. Конфигурация алертменеджера:
Создаем через сваггер много юзеров (>10):
![alt text](images/image11.png)

У нас появляется алерт:
![alt text](images/image12.png)

По прошествии времени он изменяет статус на Firing:
![alt text](images/image13.png)

Alertmanager высылает письмо об алерте:
![alt text](images/image14.png)

5. Метрики, которые мы отдаем:
![alt text](images/image2.png)
Например, создадим через сваггер нового пользователя и посмотрим на соответствующую метрику:
![alt text](images/image3.png)
![alt text](images/image4.png)
Другие метрики и запросы в консоль Prometheus:
![alt text](images/image5.png)
![alt text](images/image6.png)
![alt text](images/image7.png)