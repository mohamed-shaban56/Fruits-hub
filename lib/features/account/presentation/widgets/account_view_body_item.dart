
import 'package:flutter/material.dart';
import 'package:fruitapp/features/account/data/account_view_items_model.dart';

import 'package:fruitapp/features/account/presentation/widgets/custom_list_tile.dart';

class AccountViewBodyItem extends StatelessWidget {
  const AccountViewBodyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   var accountItemsList=getaccountItemsList(context: context);
    return Column(
      children: List.generate(
        accountItemsList.length - 1,
        (index) => CustomizeListTailWidget(accountViewItemsModel: accountItemsList[index], index: index,)
      ).toList(),
    );
  }
}