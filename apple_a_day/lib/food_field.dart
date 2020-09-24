// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'food.dart';

// class FoodField extends FormField<Food> {
//   FoodField({Key key, FormFieldSetter<Food> onSaved, Food initialValue})
//       : super(
//             key: key,
//             onSaved: onSaved,
//             initialValue: initialValue,
//             builder: (state) => Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Flexible(
//                       flex: 5,
//                       child: Directionality(
//                         textDirection: TextDirection.rtl,
//                         child: TextField(
//                           keyboardType: TextInputType.number,
//                           inputFormatters: <TextInputFormatter>[
//                             WhitelistingTextInputFormatter.digitsOnly
//                           ],
//                           textAlign: TextAlign.center,
//                           textDirection: TextDirection.ltr,
//                           decoration: InputDecoration(
//                             hintText: state.value?.calories?.toString(),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Spacer(
//                       flex: 2,
//                     ),
//                     Flexible(
//                       flex: 13,
//                       child: Directionality(
//                         textDirection: TextDirection.rtl,
//                         child: TextField(
//                           textAlign: TextAlign.right,
//                           textDirection: TextDirection.rtl,
//                           decoration: InputDecoration(
//                             hintText: state.value?.name,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ));
// }
