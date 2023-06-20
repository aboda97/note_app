import 'package:flutter/material.dart';

class CustomContainerForModelBottomSheet extends StatelessWidget {
  const CustomContainerForModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          TextFormField(
            cursorColor: const Color(0XFFFFCC80),
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: const TextStyle(color: Color(0XFFFFCC80)),
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
            decoration: InputDecoration(
              hintText: 'Description',
              hintStyle: const TextStyle(color: Color(0XFFFFCC80)),
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
          Container(
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
          )
        ],
      ),
    );
  }
}
