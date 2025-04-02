import 'package:flutter/material.dart';

import 'package:social_share_example/share_service.dart';

class ShareExampleScreen extends StatelessWidget {
  const ShareExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Social Share Example")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    'Network Example',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxYUTxazbWOFd43SJboZzOo2Toqb4DfdvBZg&s'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('nadanabill'),
                      IconButton(
                        icon: const Icon(Icons.share_rounded),
                        onPressed: () => ShareService().shareEvent(
                          text: 'https://github.com/nadanabill',
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxYUTxazbWOFd43SJboZzOo2Toqb4DfdvBZg&s',
                          isNetwork: true,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    'Asset Example',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/github.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('nadanabill'),
                      IconButton(
                        icon: const Icon(Icons.share_rounded),
                        onPressed: () => ShareService().shareEvent(
                          text: 'https://github.com/nadanabill',
                          image: 'assets/github.png',
                          isNetwork: false,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
