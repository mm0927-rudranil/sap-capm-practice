64. Final Daily Cheat Sheet
Start local CAP
cds watch
Stop CAP
Ctrl + C
Check port
lsof -i :4004
Kill process
kill <PID>
Validate CDS
cds compile .
Check metadata
GET http://localhost:4004/odata/v4/<service>/$metadata
Login to BTP
cf login
Check BTP target
cf target
Check HANA services
cf services
Add HANA support
cds add hana --for hybrid
Deploy to HANA
cds deploy --to hana
Bind HANA
cds bind
Run with HANA
cds watch --profile hybrid
Git
git status
git add .
git commit -m "CAP practice"
git push