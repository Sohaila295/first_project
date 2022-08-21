import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, //عشان نعمل فرق ما بين الابيض بتاع السكافولد والابيض بتاع الابب بار
       titleSpacing: 20.0,
        title: Row(
         children: const [
           CircleAvatar(
             radius: 20.0,
              backgroundImage: NetworkImage('https://i.pinimg.com/236x/6a/6a/e0/6a6ae0e9175f7f99ee86aa2ea0129526.jpg'),
           ),
           SizedBox(
             width: 15.0,
           ),
           Text(
             'Chats',
             style: TextStyle(
               color: Colors.black
             ),
           ),

      ],
),
        actions: [
          IconButton(onPressed: (){}
              , icon:const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child:  Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              ) ),
          IconButton(onPressed: (){}
              , icon:const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child:  Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                ),
              ) ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300]
                ),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search
                    ),
                    SizedBox(
                      width: 15.0,
                    )
                    ,Text(
                      'search'
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(cotext,index) =>  buildStoryItem(),
                    separatorBuilder: (context,index)=> SizedBox(
                      width:20.0 ,
                    ),
                    itemCount: 15,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              itemBuilder: (context, index)=> buildChatItem()
                  , separatorBuilder:(context , index)=> const SizedBox(
                    height: 20.0,
                  )
                  , itemCount:15 ),

            ],
          ),
        ),
      ),
    );
  }
  //1.build item
  //2.build list
  //3.add item to list


  // arrow function
   Widget buildChatItem() =>Row(
     children: [

       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: const [
           CircleAvatar(
             radius: 20.0,
             backgroundImage: NetworkImage('https://i.pinimg.com/236x/6a/6a/e0/6a6ae0e9175f7f99ee86aa2ea0129526.jpg'),
           ),
           Padding(
             padding: EdgeInsetsDirectional.only(
               bottom: 0.3,
               end: 0.3,
             ),
             child: CircleAvatar(
               radius: 7.0,
               backgroundColor: Colors.green,
             ),
           )
         ],
       ),
       const SizedBox(
         width: 20.0,
       ),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text(
               ' Hesham Albidiri Hesham Albidiri Hesham Albidiri Hesham Albidiri Hesham Albidiri Hesham Albidiri Hesham Albidiri'
               ,
               style:  TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold
               ),
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
             ),
             const SizedBox(
               height: 5.0,
             ),
             Row(
               children: [
                 const Expanded(
                   child: Text(
                     'hello my name is Hisham Albidiri hello my name is Hisham Albidiri hello my name is Hisham Albidiri hello my name is Hisham Albidiri',
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,

                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: Container(
                     width:7.0 ,
                     height: 7.0,
                     decoration: const BoxDecoration(
                         color: Colors.blue,
                         shape: BoxShape.circle
                     ),


                   ),
                 ),
                 const Text(
                     '02:00 PM'
                 )


               ],
             ),


           ],
         ),
       )




     ],
   );

  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://i.pinimg.com/236x/6a/6a/e0/6a6ae0e9175f7f99ee86aa2ea0129526.jpg'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 0.3,
                end: 0.3,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 6.0,
        ),
        const Text(
          'Sohila Hesham Mohammed Abdallah',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,

        ),
      ],
    ),
  );


}
