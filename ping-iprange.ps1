# ------------------------------
# Only for PS Version 3 or above
# ------------------------------
function Ping($ip)
{
    if (Test-Connection -ipaddres $ip -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$ip is REPLY" -ForegroundColor Green
    }
    else{
        Write-Host "$ip is DOWN" -ForegroundColor Red
    }
}

function PingRange([string[]]$iprange)
{
    foreach ($ip in $iprange)
    {
        Ping($ip)
    }

}
PingRange (1..254 | % {"10.230.5."+$_})
