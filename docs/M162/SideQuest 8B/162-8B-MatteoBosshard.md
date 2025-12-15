# Eigene Datenbank designen

Gedanken bezüglich Preis, bestellung und bezahlung:
Produktpreis in PRODUCT tabelle gefunden
wird multipliziert mit amount in PRODUCT_ORDER
danach wird rabatt von ORDER abgezogen
das gibt amount_due in PAYMENT

## Beziehungen

Genau ein USER kann mehrere oder keine ORDER haben
Genau ein PAYMENT gehört zu genau einem ORDER
Genau ein PAYMENT_METHOD kann mehrere oder keine PAYMENT haben
Genau ein CATEGORY kann mehrere oder keine PRODUCT haben
Genau ein USER kann mehrere oder keine ADRESS haben


## Tabellen

- PRODUCT:
  - product_id: NN, UN, AI, PK
  - name: NN
  - category: NN, FK1
  - price: NN
  - stock: NN
- USER:
  - user_id: NN, UN, AI, PK
  - username: NN, UN
  - password: NN
  - firstname: NN
  - lastname: NN
- ORDER:
  - order_id: NN, UN, AI, PK
  - user_id: NN, FK1
  - date: NN
  - discount: NN
  - total: NN
- ADRESS:
  - adress_id: NN, UN, AI, PK
  - user_id: NN, FK1
  - country: NN
  - street: NN
  - city: NN
  - postal_code: NN
- PAYMENT:
  - payment_id: NN, UN, AI, PK
  - order_id: NN, FK1
  - payment_method_id: NN, FK2
  - amount_due: NN
  - date: NN
- CATEGORY:
  - category_id: NN, UN, AI, PK
  - label: NN, UN
- PAYMENT_METHOD:
  - payment_method_id: NN, UN, AI, PK
  - label: NN, UN
