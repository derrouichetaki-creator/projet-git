#!/bin/bash
mkdir -p reports
DATE=$(date)
echo "Rapport de sécurité - $DATE" > reports/report.txt
echo "" >> reports/report.txt
echo "Tentatives SSH échouées :" >> reports/report.txt
grep "Failed password" /var/log/auth.log >> reports/report.txt
echo "" >> reports/report.txt
echo "Erreurs HTTP 404 :" >> reports/report.txt
grep "404" /var/log/nginx/access.log >> reports/report.txt
