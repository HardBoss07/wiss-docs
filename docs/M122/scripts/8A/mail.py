#!/usr/bin/python3
# -*- coding: utf-8 -*-

import smtplib, ssl, argparse

context = ssl.create_default_context()

def send_mail(smtp, port, mail, password, receiver, message):
    with smtplib.SMTP_SSL(smtp, port, context=context) as server:
        server.login(mail, password)
        print(f"Sende E-Mail von {mail}...")
        server.sendmail(mail, receiver, message.encode("utf-8"))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='E-Mail verschicken')
    parser.add_argument('--mail', dest='mail', help='E-Mail Adresse des Senders', required=True)
    parser.add_argument('--receiver', dest='receiver', help='E-Mail Adresse des Empfängers', required=True)
    parser.add_argument('--name', dest='name', help='Name des Senders', default='Max Muster')
    parser.add_argument('--port', dest='port', default=465, type=int, help='SMTP Port')
    parser.add_argument('--password', dest='password', help='Passwort des Sender-Konto', required=True)
    parser.add_argument('--smtp', dest='smtp', help='SMTP-Server Adresse', default='smtp.gmail.com')
    parser.add_argument('--message', dest='message', help='Der Inhalt der Nachricht', default='Hallo Welt')
    parser.add_argument('--subject', dest='subject', help='Die Betreffzeile des E-Mails', default='Meine Betreffzeile')
    
    args = parser.parse_args()

    message = f"""From: {args.name} <{args.mail}>
MIME-Version: 1.0
Content-type: text/html; charset=utf-8
Subject: {args.subject}

{args.message}
"""
    send_mail(args.smtp, args.port, args.mail, args.password, args.receiver, message)
    print("E-Mail wurde verschickt")