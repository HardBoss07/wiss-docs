# Eigene Datenbank designen

Gedanken bezüglich Preis, bestellung und bezahlung:
Produktpreis in `Product` Tabelle gefunden
wird multipliziert mit quantity in `ProductOrder`
danach wird discount von `Order` abgezogen
das gibt amount_due in `Payment`

## Beziehungen

Genau ein `User` kann mehrere oder keine `Order` haben
Genau ein `Payment` gehört zu genau einem `Order`
Genau ein `PaymentMethod` kann mehrere oder keine `Payment` haben
Genau ein `Category` kann mehrere oder keine `Product` haben
Genau ein `User` kann mehrere oder keine `Adress` haben

Genau ein `Order` kann mehrere oder keine `Product` haben
Genau ein `Product` kann in mehreren oder keinen `Order` erscheinen
Beziehung ist über Zwischentabelle `ProductOrder` abgebildet

## Tabellen

- `Product`:
  - product_id: NN, UN, AI, PK
  - name: NN
  - category: NN, FK1
  - price: NN
  - stock: NN
- `User`:
  - user_id: NN, UN, AI, PK
  - username: NN, UN
  - password: NN
  - firstname: NN
  - lastname: NN
- `Order`:
  - order_id: NN, UN, AI, PK
  - user_id: NN, FK1
  - date: NN
  - discount: NN
  - total: NN
- `Adress`:
  - adress_id: NN, UN, AI, PK
  - user_id: NN, FK1
  - country: NN
  - street: NN
  - city: NN
  - postal_code: NN
- `Payment`:
  - payment_id: NN, UN, AI, PK
  - order_id: NN, FK1
  - payment_method_id: NN, FK2
  - amount_due: NN
  - date: NN
- `Category`:
  - category_id: NN, UN, AI, PK
  - label: NN, UN
- `PaymentMethod`:
  - payment_method_id: NN, UN, AI, PK
  - label: NN, UN
- `ProductOrder`:
  - product_id: NN, PK, FK1
  - order_id: NN, PK, FK2
  - quantity: NN
