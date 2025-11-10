

import 'package:flutter/material.dart';

Color getStatusColor(String status)
{
  switch(status)
  {
    case "accepted":
    return Colors.green;
    case "cancelled":
     return Colors.red;
     case "pending":
     return Colors.orange;
    default:
      return Colors.grey; 
}
}