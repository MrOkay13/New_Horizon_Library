$ErrorActionPreference = "Stop"
Copy-Item "C:\Users\Lenovo\OneDrive\Desktop\Invent .xlsx" -Destination "C:\Users\Lenovo\OneDrive\Desktop\New_Horizon_Library\temp_invent.xlsx" -Force

$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false
try {
    $wb = $excel.Workbooks.Open("C:\Users\Lenovo\OneDrive\Desktop\New_Horizon_Library\temp_invent.xlsx")
    $wb.SaveAs("C:\Users\Lenovo\OneDrive\Desktop\New_Horizon_Library\inventory_data.csv", 6)
    $wb.Close($false)
} finally {
    $excel.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($excel) | Out-Null
    Remove-Item "C:\Users\Lenovo\OneDrive\Desktop\New_Horizon_Library\temp_invent.xlsx" -Force -ErrorAction SilentlyContinue
}
