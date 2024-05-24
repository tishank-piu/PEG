import 'package:flutter/material.dart';
import 'package:peg/Presentation/PaymentScreen/paymentSuccess.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _showDiscountDropdown = false;
  bool _showDiscountTextField = false;
  String? _selectedDiscountOption;

  bool _showReferralDropdown = false;
  bool _showReferralTextField = false;
  String? _selectedReferralOption;

  String? _selectedPaymentMethod;

  double classPrice = 100.0; // Example price
  double discount = 10.0; // Example discount
  double referralDiscount = 5.0; // Example referral discount

  @override
  Widget build(BuildContext context) {
    double subTotal = classPrice - discount - referralDiscount;

    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Discount & Voucher',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showDiscountDropdown = !_showDiscountDropdown;
                  });
                },
                child: Text(
                  'Discount',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ),
              if (_showDiscountDropdown)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    value: _selectedDiscountOption,
                    items: ['Apply Discount']
                        .map((option) => DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedDiscountOption = value;
                        _showDiscountTextField = value == 'Apply Discount';
                      });
                    },
                  ),
                ),
              if (_showDiscountTextField)
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Discount Code',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showReferralDropdown = !_showReferralDropdown;
                  });
                },
                child: Text(
                  'Referral Code',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ),
              if (_showReferralDropdown)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    value: _selectedReferralOption,
                    items: ['Apply Referral Code']
                        .map((option) => DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedReferralOption = value;
                        _showReferralTextField = value == 'Apply Referral Code';
                      });
                    },
                  ),
                ),
              if (_showReferralTextField)
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Referral Code',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              SizedBox(height: 20.0),
              Text(
                'Payment Method',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                value: _selectedPaymentMethod,
                items: [
                  DropdownMenuItem<String>(
                    value: 'Google Pay',
                    child: Row(
                      children: [
                        Image.asset('assets/google-pay.png', width: 24, height: 24),
                        SizedBox(width: 10),
                        Text('Google Pay'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'PhonePe',
                    child: Row(
                      children: [
                        Image.asset('assets/phonepe.png', width: 24, height: 24),
                        SizedBox(width: 10),
                        Text('PhonePe'),
                      ],
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Paytm',
                    child: Row(
                      children: [
                        Image.asset('assets/paytm.png', width: 24, height: 24),
                        SizedBox(width: 10),
                        Text('Paytm'),
                      ],
                    ),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Class Price'),
                  Text('\$${classPrice.toStringAsFixed(2)}'),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discount'),
                  Text('-\$${discount.toStringAsFixed(2)}'),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discount Referral Code'),
                  Text('-\$${referralDiscount.toStringAsFixed(2)}'),
                ],
              ),
              SizedBox(height: 16.0),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${subTotal.toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle payment action here
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentSuccess()));
                  },
                  child: Text('Pay Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
