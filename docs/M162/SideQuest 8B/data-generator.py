import pandas as pd
import random
from datetime import datetime, timedelta

# Hilfsfunktion für zufällige Daten im Jahr 2025
def get_random_date():
    start_date = datetime(2025, 1, 1)
    random_days = random.randint(0, 300)
    return (start_date + timedelta(days=random_days)).strftime("%Y-%m-%d")

# 1. Stammdaten
categories = [
    {"category_id": 1, "label": "Elektronik"},
    {"category_id": 2, "label": "Bücher"},
    {"category_id": 3, "label": "Haushalt"},
    {"category_id": 4, "label": "Sport"}
]

products = [
    {"product_id": 1, "name": "Smartphone Alpha", "category": 1, "price": 699.00, "stock": 45},
    {"product_id": 2, "name": "Laptop Pro", "category": 1, "price": 1250.00, "stock": 15},
    {"product_id": 3, "name": "Bluetooth Kopfhörer", "category": 1, "price": 129.50, "stock": 80},
    {"product_id": 4, "name": "Python Masterclass", "category": 2, "price": 45.00, "stock": 120},
    {"product_id": 5, "name": "SQL für Anfänger", "category": 2, "price": 29.90, "stock": 200},
    {"product_id": 6, "name": "Kaffeemaschine", "category": 3, "price": 89.00, "stock": 30},
    {"product_id": 7, "name": "Staubsauger Roboter", "category": 3, "price": 299.00, "stock": 12},
    {"product_id": 8, "name": "Yogamatte", "category": 4, "price": 35.00, "stock": 50},
    {"product_id": 9, "name": "Hantel-Set", "category": 4, "price": 75.00, "stock": 25},
    {"product_id": 10, "name": "Gaming Maus", "category": 1, "price": 55.00, "stock": 100}
]

# 2. 10 Nutzer und Adressen
users = []
adresses = []
firstnames = ["Max", "Clara", "Julian", "Sophie", "Lukas", "Emma", "David", "Mia", "Tim", "Lara"]
lastnames = ["Müller", "Schmidt", "Weber", "Meyer", "Wagner", "Becker", "Schulz", "Hoffmann", "Koch", "Bauer"]
cities = [("Zürich", "8001"), ("Bern", "3000"), ("Basel", "4001"), ("Genf", "1201"), ("Luzern", "6003")]

for i in range(1, 11):
    users.append({
        "user_id": i,
        "username": f"{firstnames[i-1].lower()}_{i+10}",
        "password": f"hash_val_{i*123}",
        "firstname": firstnames[i-1],
        "lastname": lastnames[i-1]
    })
    city_info = random.choice(cities)
    adresses.append({
        "adress_id": i,
        "user_id": i,
        "country": "Schweiz",
        "street": f"Hauptstrasse {random.randint(1, 100)}",
        "city": city_info[0],
        "postal_code": city_info[1]
    })
    
# 3. Bestellungen und ProductOrder
orders = []
product_orders = []
payments = []
# Hier habe ich den Namen für die Liste korrigiert
payment_methods_list = [
    {"payment_method_id": 1, "label": "Kreditkarte"},
    {"payment_method_id": 2, "label": "PayPal"}
]

order_id_counter = 1
for u_id in range(1, 11):
    # Jeder Nutzer hat zwischen 1 und 4 Bestellungen für mehr Variation
    for _ in range(random.randint(1, 4)):
        o_date = get_random_date()
        discount = random.choice([0, 0, 5, 10])
        orders.append({
            "order_id": order_id_counter, 
            "user_id": u_id, 
            "date": o_date, 
            "discount": discount
        })
        
        # PK-Integrität: 'sample' zieht Produkte ohne Zurücklegen
        num_different_products = random.randint(1, 3)
        selected_products = random.sample(products, num_different_products)
        
        subtotal = 0
        for p in selected_products:
            qty = random.randint(1, 2)
            product_orders.append({
                "order_id": order_id_counter, 
                "product_id": p["product_id"], 
                "quantity": qty
            })
            subtotal += p["price"] * qty
        
        payments.append({
            "payment_id": order_id_counter, 
            "order_id": order_id_counter, 
            "payment_method_id": random.randint(1, 2),
            "amount_due": max(0, subtotal - discount),
            "date": o_date
        })
        order_id_counter += 1

# 4. Export (Tabellennamen exakt wie in deinem ERD)
all_tables = {
    "Category": categories,
    "Product": products,
    "User": users,
    "Adress": adresses,
    "Order": orders,
    "ProductOrder": product_orders,
    "Payment_Method": payment_methods_list,
    "Payment": payments
}

file_name = "Datenbank_Final_Variation.xlsx"
with pd.ExcelWriter(file_name, engine='openpyxl') as writer:
    for name, data in all_tables.items():
        df = pd.DataFrame(data)
        df.to_excel(writer, sheet_name=name, index=False)
        
        # Automatisches Anpassen der Spaltenbreite
        worksheet = writer.sheets[name]
        for idx, col in enumerate(df.columns):
            max_len = max(df[col].astype(str).map(len).max(), len(col)) + 2
            # Buchstaben-Index für Spalte (A, B, C...)
            col_letter = chr(65 + idx)
            worksheet.column_dimensions[col_letter].width = max_len

print(f"Datei '{file_name}' erfolgreich mit PK-Integrität und hoher Variation erstellt.")