import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatelessWidget {
  final DateTime selectedDate;

  DateTimePickerWidget({required Key key, required this.selectedDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          _selectDate(context).then((_) {
            _selectTime(context);
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Select date and time:\n  ${selectedDate.toString()}",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected date: $picked')),
      );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedDate),
    );
    if (picked != null) {
      DateTime newDateTime = DateTime(
        selectedDate.year,
        selectedDate.month,
        selectedDate.day,
        picked.hour,
        picked.minute,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected date and time: $newDateTime')),
      );
    }
  }
}
