import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/core/utliz/cubit/lang_cubit/cubit/language_cubit.dart';
import 'package:fruitapp/generated/l10n.dart';

class LanguageDialog extends StatefulWidget {
  const LanguageDialog({super.key});

  @override
  State<LanguageDialog> createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
late  String _selectedLang ; 
@override
  void initState() {
    
    super.initState();
_selectedLang=context.read<LanguageCubit>().state.languageCode;
  }
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 260,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              S.current.select_language,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 20),
            
         
            RadioListTile<String>(
              title:  Text(S.current.arabic),
              value: "ar",
              groupValue: _selectedLang,
              onChanged: (value) {
                setState(() {
                  _selectedLang = value!;
                });
              },
            ),
            
          
            RadioListTile<String>(
              title:  Text(S.current.english),
              value: "en",
              groupValue: _selectedLang,
              onChanged: (value) {
                setState(() {
                  _selectedLang = value!;
                });
              },
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

            TextButton(
              onPressed: () {
           
                Navigator.pop(context, _selectedLang);
              },
              child:  Text(S.current.cancel),
            ),
             TextButton(
              onPressed: () {
               context.read<LanguageCubit>().toggleLanguage(_selectedLang);
               Future.delayed(Duration(milliseconds: 100),(){
                  Navigator.pop(context, _selectedLang);
               });
            
              },
              child:  Text(S.current.confirm),
            ),
              ],
            ),
           
            
          ],
        ),
      ),
    );
  }
}
