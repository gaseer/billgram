import 'package:flutter/material.dart';

class AddCustomerPage extends StatelessWidget {
  AddCustomerPage({super.key});

  final customerNameController = TextEditingController();
  final careOfController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final placeController = TextEditingController();
  final landmarkController = TextEditingController();
  final emailController = TextEditingController();
  final panNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Customer'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Customer Code',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'CR568H',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Date',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '12 March, 2024',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                label: 'Customer Name',
                controller: customerNameController,
              ),
              CustomTextFormField(
                label: 'Care of',
                controller: careOfController,
              ),
              CustomTextFormField(
                label: 'Phone Number',
                controller: phoneNumberController,
              ),
              CustomTextFormField(
                label: 'Place',
                controller: placeController,
              ),
              CustomTextFormField(
                label: 'Landmark',
                controller: landmarkController,
              ),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(value: 'Area1', child: Text('Area1')),
                  DropdownMenuItem(value: 'Area2', child: Text('Area2')),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Area',
                  border: OutlineInputBorder(),
                ),
              ),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(
                      value: 'Panchayth1', child: Text('Panchayth1')),
                  DropdownMenuItem(
                      value: 'Panchayth2', child: Text('Panchayth2')),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Panchayth',
                  border: OutlineInputBorder(),
                ),
              ),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(
                      value: 'District1', child: Text('District1')),
                  DropdownMenuItem(
                      value: 'District2', child: Text('District2')),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'District',
                  border: OutlineInputBorder(),
                ),
              ),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(value: 'State1', child: Text('State1')),
                  DropdownMenuItem(value: 'State2', child: Text('State2')),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'State',
                  border: OutlineInputBorder(),
                ),
              ),
              CustomTextFormField(
                label: 'Email Address',
                controller: emailController,
              ),
              CustomTextFormField(
                label: 'Pan Number',
                controller: panNumberController,
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Submit action
                  },
                  child: Text('Create Customer'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const CustomTextFormField(
      {Key? key, required this.label, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
