import 'package:flutter/material.dart';

class HomeMusic extends StatefulWidget {
  HomeMusic({Key? key}) : super(key: key);

  @override
  State<HomeMusic> createState() => _HomeMusicState();
}

class _HomeMusicState extends State<HomeMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
      
        selectedItemColor:Colors.red,
        unselectedItemColor: Colors.grey,
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Listen Now'),
          BottomNavigationBarItem(icon: Icon(Icons.browse_gallery), label: 'Browse'),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: 'Radio'),
          BottomNavigationBarItem(icon: Icon(Icons.library_add), label: 'Library'),
          BottomNavigationBarItem(icon:
                Icon(Icons.search), label: 'Search'),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
            SizedBox(height: 20,),
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Library', style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  )),
                 TextButton(onPressed: (){}, child: Text('Edit', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.red.withOpacity(.90)),))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10.0, left: 10.0),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:7.0 , left: 15.0),
                  child: Icon(Icons.playlist_add, 
                  color: Colors.red.withOpacity(.90),
                  size: 35,
                  ),
                ),
                Text('Playlists', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
            SizedBox(height: 20,),
              Padding(
              padding: const EdgeInsets.only(right:10.0, left: 10.0),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
            SizedBox(height: 20,),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:7.0 , left: 15.0),
                  child: Icon(Icons.mic, 
                  color: Colors.red.withOpacity(.90),
                  size: 35,
                  ),
                ),
                Text('Artists', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ),
              ],
            ),
            SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(right:10.0, left: 10.0),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
             SizedBox(height: 20,),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:7.0 , left: 15.0),
                  child: Icon(Icons.album_outlined, 
                  color: Colors.red.withOpacity(.90),
                  size: 35,
                  ),
                ),
                Text('Albums', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ),
              ],
            ),
             SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(right:10.0, left: 10.0),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
             SizedBox(height: 20,),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:7.0 , left: 15.0),
                  child: Icon(Icons.music_note, 
                  color: Colors.red.withOpacity(.90),
                  size: 35,
                  ),
                ),
                Text('Songs', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ),
              ],
            ),
             SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(right:10.0, left: 10.0),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
             SizedBox(height: 20,),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:7.0 , left: 15.0),
                  child: Icon(Icons.download, 
                  color: Colors.red.withOpacity(.90),
                  size: 35,
                  ),
                ),
                Text('Downloaded', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ),
              ],
            ),
             SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(right:10.0, left: 10.0),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
             SizedBox(height: 20,),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:7.0 , left: 15.0),
                  child: Icon(Icons.tv, 
                  color: Colors.red.withOpacity(.90),
                  size: 35,
                  ),
                ),
                Text('TV & Movies', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ),
              ],
            ),
             SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(right:10.0, left: 10.0),
              child: Container(
                color: Colors.grey,
                height: 0.5,
              ),
            ),
      
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text('Recently Added', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            SizedBox(height: 15,),
      
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column( children: [
                    Image.asset('lib/assests/eminem.jpeg', height: 120,),
                    SizedBox(height: 5,),
                    Text('Godzilla (feat. Juice WRLD)')
                  ],
                  ),
                  Column( children: [
                    Image.asset('lib/assests/pbuy.jpeg', height: 120,),
                    SizedBox(height: 5,),
                    Text('Peace Be Upon You (PBUY)')
                  ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column( children: [
                  Image.asset('lib/assests/eminem.jpeg', height: 120,),
                  SizedBox(height: 5,),
                  Text('Godzilla (feat. Juice WRLD)')
                ],
                ),
                Column( children: [
                  Image.asset('lib/assests/eminem.jpeg', height: 120,),
                  SizedBox(height: 5,),
                  Text('Godzilla (feat. Juice WRLD)')
                ],
                ),
              ],
            ),
            SizedBox(height: 20,),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column( children: [
                  Image.asset('lib/assests/eminem.jpeg', height: 120,),
                  SizedBox(height: 5,),
                  Text('Godzilla (feat. Juice WRLD)')
                ],
                ),
                Column( children: [
                  Image.asset('lib/assests/eminem.jpeg', height: 120,),
                  SizedBox(height: 5,),
                  Text('Godzilla (feat. Juice WRLD)')
                ],
                ),
              ],
            ),
          ],
          
        ),
        ),
      ),
    );
  }
}


AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.red,))
        ],
      ),
    );
  }

