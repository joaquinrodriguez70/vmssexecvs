Invoke-WebRequest -UseBasicParsing -uri http://127.0.0.1:18890/ServiceHost/api/v1/services  |   ConvertFrom-Json   |  ForEach-Object { $_ |  Where-Object {$_.state -ne 'Started' -Or $_.isHealthy -eq $False  } | ft isHealthy,serviceName,packageVersion,state  } 