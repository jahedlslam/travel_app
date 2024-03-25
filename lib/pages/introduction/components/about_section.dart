import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          height: 155,
          width: 330,
          child: Text(
            "Marina Bay Sands is an integrated resort fronting Marina Bay in Singapore and a landmark of the city. At its opening in 2010, it was deemed the world's most expensive standalone casino property at S\$8 billion (US\$6.88 billion).",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
        Container(
          height: 285,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: NetworkImage(
                    "https://s.yimg.com/ny/api/res/1.2/OGVWcbso3kEhsrsk9_ablQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQ4MA--/https://media.zenfs.com/en_SG/News/hardwarezone.com.sg/MBS_Map.jpg"),
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
