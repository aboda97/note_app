import 'package:flutter/material.dart';

class CustomContainerForModelBottomSheet extends StatelessWidget {
  const CustomContainerForModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNoteForm();
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> noteFormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: noteFormKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextFormField(
              cursorColor: const Color(0XFFFFCC80),
              onSaved: (value) {
                title = value;
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'This Field is Required';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'Title',
                hintStyle: const TextStyle(color: Color(0XFFFFCC80)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Color(0XFFFFCC80),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 10,
              cursorColor: const Color(0XFFFFCC80),
              onSaved: (value) {
                subTitle = value;
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'This Field is Required';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'Description',
                hintStyle: const TextStyle(color: Color(0XFFFFCC80)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Color(0XFFFFCC80),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 64.0,
            ),
            GestureDetector(
              onTap: () {
                if (noteFormKey.currentState!.validate()) {
                  noteFormKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: const Color(0XFFFFCC80)),
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: const Center(
                    child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
