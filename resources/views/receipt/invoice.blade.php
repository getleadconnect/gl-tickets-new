
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order {{$invoice->invoice_id}} Invoice</title>
    <style>
        .item_table, .item_table th, .item_table td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        .item_table th{
            text-align: left ;
        }

        .item_table th, .item_table td{
            padding-left: 8px;
        }

        .customer-details {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            padding: 10px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body >

<div class="row">
<div class="col-12">
<button type="button" id="btn-receipt-print" class="btn btn-outline-primary " style="padding:4px 10px;color:red !important;">Print</button>
</div>
</div>


<div id="DivIdToPrint" style="width:100%;">

    <table style="width: 100%;" >
        <tbody>
            <tr>
                <td>
                    <img src="data:image/png;base64,{{base64_encode(file_get_contents(public_path('/images/matrix.png')))}}"
                     alt="Ekchitra.img" style="width:110px;">
                </td>
                <td>
                    <table align="right">
                        <tr>
                            <td><strong>Invoice/Bill for purchase</strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>

    <table style="width: 100%;margin-top:30px;" >
        <tbody>
            <tr>
                <td width="50%">
                    <table>
                        <tbody>
                            <tr>
                                <td>Order Number: {{$invoice->invoice_id}}</td>
                            </tr>
                            <tr>
                                <td>
                                    Order Date: {{$order_date}}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td>
                    {{-- shipping --}}
                </td>
            </tr>
        </tbody>
    </table>

    <div class="customer-details">
        <strong>Customer Details:</strong><br>
        <div style="display: flex; flex-direction: column; margin-top: 10px;">
            <div style="display: flex; justify-content: space-between; padding: 2px 0;">
                <span style="width: 150px; font-weight: bold;">Name:</span>
                <span style="text-transform: capitalize;">{{$customer->name}}</span>
            </div>
            <div style="display: flex; justify-content: space-between; padding: 2px 0;">
                <span style="width: 150px; font-weight: bold;">Email:</span>
                <span>{{$customer->email}}</span>
            </div>
            <div style="display: flex; justify-content: space-between; padding: 2px 0;">
                <span style="width: 150px; font-weight: bold;">Contact:</span>
                <span>+{{$customer->country_code. ' '.$customer->contact}}</span>
            </div>
            <div style="display: flex; justify-content: space-between; padding: 2px 0;">
                <span style="width: 150px; font-weight: bold;">Company Name:</span>
                <span>{{$customer->company_name}}</span>
            </div>
        </div>
    </div>
    

    <table style="width: 100%;" >
        <tbody>
            <h3>Ticket Details</h3>
        </tbody>
    </table>

    <table style="width: 100%;" class="item_table">
        <thead>
            <tr>
                <th>#</th>
                <th>Details</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><b>Service Id</b></td>
                <td style="text-transform: capitalize;">{{$ticket->service_id}}</td>
            </tr>
            <tr>
                <td><b>Issue</b></td>
                <td style="text-transform: capitalize;">{{$ticket->issue}}</td>
            </tr>
            <tr>
                <td><b>Description</b></td>
                <td style="text-transform: capitalize;">{{$ticket->description}}</td>
            </tr>
            
            <tr>
                <td colspan="1"><strong>Total: </strong></td>
                <td style="background-color: #e4e4e4;">{{number_format($invoice->total_amount,2)}}</td>
            </tr>

        </tbody>
    </table>

    <table style="width:100%;margin-top:30px;" class="item_table">
        <tbody>
            <tr><td><strong>Service Charge</strong></td><td style="text-align:right;width:20%;padding-right:5px;">{{number_format($invoice->service_charge,2)}} </td> </tr>
        </tbody>
    </table>

    <table style="width: 100%;margin-top:20px;">
        <tbody>
            <tr>
                <td colspan="2"> <strong> Spare Parts Details:</strong> </td>
            </tr>
        </tbody>
    </table>

    @if(!$pitems->isEmpty())
    <table style="width: 100%;margin-top:5px;" class="item_table" >
    <thead>
        <tr><td style="width:40px;">Slno</td> <td> Particulars</td> <td>Qty</td><td style="text-align:right;padding-right:5px;">Rate</td></tr>
    </thead>    
    <tbody>
        @foreach($pitems as $key=>$r)
            <tr><td>{{++$key}}</td> <td> {{$r->product_name}} </td> <td>{{$r->quantity}}</td><td style="text-align:right;width:20%;padding-right:5px;">{{number_format($r->total_amount,2)}} </td> </tr>
        @endforeach
        </tbody>
    </table>
    @endif

    <table style="width: 100%;margin-top:25px;border:none;" >
        <tbody>
            <tr>
                <td>&nbsp;</td>
                <td colspan=2 style="text-align:right !important;"><strong>Total Amount: </strong> </td>
                <td style="font-size:15px;text-align:right;width:150px !important;">{{number_format($invoice->total_amount,2)}} </td>
            </tr>

			<tr>
                <td>&nbsp;</td>
                <td colspan=2 style="text-align:right !important;"><strong>Discount: </strong> </td>
                <td style="font-size:15px;text-align:right;width:150px !important;">{{number_format($pay->discount,2)}}</td>
            </tr>

			<tr>
                <td>&nbsp;</td>
                <td colspan=2 style="text-align:right !important;"><strong>Net Amount: </strong> </td>
                <td style="font-size:25px;text-align:right;width:150px !important;"><span style="border-bottom:1px double #000;">{{number_format($pay->net_amount,2)}}</span> </td>
            </tr>

            <tr>
                <td colspan=4 style="text-align:left;">Rupees : &nbsp; {{$amount_in_words}} </td>
            </tr>

            <tr> <td colspan=4 style="text-align:left;"> &nbsp;</td> </tr>
            <tr> <td colspan=4 style="text-align:left;"> &nbsp;</td> </tr>
            <tr> <td colspan=4 style="text-align:left;"> &nbsp;</td> </tr>

            <tr>
                <td colspan=4 style="text-align:right;">For Matrix: </td>
            </tr>
            <tr>
            <td colspan=2 style="text-align:left;">Date : {{date('d-m-Y')}}</td>    
            <td colspan=2 style="text-align:right;width:50%;">Authorized Signature</td>
            </tr>
        </tbody>
    </table>
</div>
<script>

$(document).on('click','#btn-receipt-print',function()
{
 var divToPrint=document.getElementById('DivIdToPrint');
  var newWin=window.open('','Print-Window');
  newWin.document.open();
  newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');
  newWin.document.close();
});


</script>
</body>
</html>
