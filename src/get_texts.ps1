# env dependant

# API url
$baseUrl = "https://liturgiadiaria.site/"

# getting next sundays date
$date = Get-Date
while ($Date.DayOfWeek -ne "Sunday") {$date = $date.AddDays(1)}
$date = $date.ToString("dd-MM")

# uncomment the following line if you want to overwrite
#$date = "13-05"

# constants
$finalUrl = $baseUrl + $date
$response = Invoke-RestMethod -uri $finalUrl

# write to file
$files_path = ".\texts\"

# PRIMEIRA LEITURA
New-Item -Path "$files_path" -Name "primeiraLeitura_referencia.txt" -ItemType "file" -Value $response.primeiraLeitura.referencia -Force

# SALMO
New-Item -Path "$files_path" -Name "salmo_referencia.txt" -ItemType "file" -Value $response.salmo.referencia -Force
New-Item -Path "$files_path" -Name "salmo_refrao.txt" -ItemType "file" -Value $response.salmo.refrao -Force

# SEGUNDA LEITURA
New-Item -Path "$files_path" -Name "segundaLeitura_referencia.txt" -ItemType "file" -Value $response.segundaLeitura.referencia -Force

# EVANGELHO
New-Item -Path "$files_path" -Name "evangelho_referencia.txt" -ItemType "file" -Value $response.evangelho.referencia -Force
