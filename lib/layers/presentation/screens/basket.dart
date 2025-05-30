import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Корзина',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Контактная информация',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('emmanuel@gmail.com'),
            Text('Телефон: +234-811-732-5298'),
            SizedBox(height: 20),
            Text(
              'Адрес',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('1082 Аэропорт, Нигерия'),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Способ оплаты',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('DbL Card'),
                  Text('**** **** **** 4629'),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text('Посмотреть на карте'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            Text(
              'Сумма: \$753.95',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Доставка: \$60.00',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Итого: \$814.15',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Подтвердить'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}