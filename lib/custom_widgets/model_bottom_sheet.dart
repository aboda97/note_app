import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/models/note_model.dart';

import '../cubit/cubit_add/add_note_cubit.dart';

class CustomContainerForModelBottomSheet extends StatelessWidget {
  const CustomContainerForModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteStates>(
        listener: (context, state) {
          if (state is AddNoteSuccessState) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailureState) {}
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoadingState ? true : false,
            child: const AddNoteForm(),
          );
        },
      ),
    );
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
    var addNoteCubit = BlocProvider.of<AddNoteCubit>(context);
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
                  var noteModel = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.yellow.value,
                  );
                  addNoteCubit.addNote(noteModel);
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
