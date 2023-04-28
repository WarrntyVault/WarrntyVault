import 'package:flutter/material.dart';

import '../componats/_customButton.dart';

class WarrantiesPage extends StatelessWidget {
  const WarrantiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children:  [
                const WarrantiesTitle(),
                const Divider(color: Colors.black, thickness: 3,),
                const SizedBox(
                  height: 50,
                ),
                const ValidExpiredButtons(),
                const SizedBox(
                  height: 50,
                ),

                Column(children: [
                  for (int i = 0; i < 6; i++) ...[
                    const DisplayWarranty(),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ]),
              ],
            ),
          )),
    );
  }
}

////////////////////////////////////////////////////////////////
/*class DisplayWarranty extends StatelessWidget {
  const DisplayWarranty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 7,
            ),
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.library_books),
              Column(
                children: const [
                  Text("Warranty Title"),
                  Text("Ref No"),
                ],
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Placeholder(
            fallbackHeight: 200,
            fallbackWidth: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Name:"),
                  Text("Phone:"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Type:"),
                  Text("Status:"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Start date:"),
                  Text("Expiration date:"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/
//////////////////////////////test///////
class DisplayWarranty extends StatefulWidget {
  const DisplayWarranty({
    Key? key,
  }) : super(key: key);

  @override
  _DisplayWarrantyState createState() => _DisplayWarrantyState();
}

class _DisplayWarrantyState extends State<DisplayWarranty> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.library_books),
                Column(
                  children: const [
                    Text("Warranty Title"),
                    Text("Ref No"),
                  ],
                ),
                Icon(
                  _expanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                ),
              ],
            ),
          ),

          if (_expanded)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),

                const Placeholder(
                  fallbackHeight: 200,
                  fallbackWidth: 200,
                ),

                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Name:"),
                    Text("Phone:"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Type:"),
                    Text("Status:"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Start date:"),
                    Text("Expiration date:"),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}




/////////////////////////////////////////

/*class ValidExpiredButtons extends StatelessWidget {
  const ValidExpiredButtons({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [

        MyButton(title: "Valid"),
        MyButton(title: "Expired"),





      ],
    );
  }
} */


/////////////////////////////////////////////////////////////////////////
class ValidExpiredButtons extends StatefulWidget {
  const ValidExpiredButtons({super.key});

  @override
  _ValidExpiredButtonsState createState() => _ValidExpiredButtonsState();
}

class _ValidExpiredButtonsState extends State<ValidExpiredButtons> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyButtonGroup(
        ),
        SizedBox(height: 16),

      ],
    );
  }
}
///////////////////////////////////////////////////////////////







class WarrantiesTitle extends StatelessWidget {
  const WarrantiesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("WARRANTIES",textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
      ],
    );
  }
}