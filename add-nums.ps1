function Add-Nums
{
    param([int]$num1, [int]$num2)
    $num1 + $num2
}

$result = Add-Nums -num1 123 -num2 456
$result += Add-Nums 1 1 1 1
$result += Add-Nums (1588-8)
$result += Add-Nums 25
$result