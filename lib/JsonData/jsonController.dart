import 'package:get/get.dart';

class JasonController extends GetxController {


  List demoList = [
    {
      "name": "Adeel Solangi",
      "language": "Sindhi",
      "id": "V59OF92YF627HFY0",
      "bio": "Donec lobortis eleifend condimentum. Cras dictum dolor lacinia lectus vehicula rutrum. Maecenas quis nisi nunc. Nam tristique feugiat est vitae mollis. Maecenas quis nisi nunc.",
      "version": 6.1,
      "image": "https://plus.unsplash.com/premium_photo-1681489930334-b0d26fdb9ed8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8b2ZmaWNlJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",

    },
    {
      "name": "Afzal Ghaffar",
      "language": "Sindhi",
      "id": "ENTOCR13RSCLZ6KU",
      "bio": "Aliquam sollicitudin ante ligula, eget malesuada nibh efficitur et. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Etiam congue dignissim volutpat. Vestibulum pharetra libero et velit gravida euismod.",
      "version": 1.88,
      "image": "https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.webp?b=1&s=170667a&w=0&k=20&c=XPuGhP9YyCWquTGT-tUFk6TwI-HZfOr1jNkehKQ17g0=",
    },
    {
      "name": "Aamir Solangi",
      "language": "Sindhi",
      "id": "IAKPO3R4761JDRVG",
      "bio": "Vestibulum pharetra libero et velit gravida euismod. Quisque mauris ligula, efficitur porttitor sodales ac, lacinia non ex. Fusce eu ultrices elit, vel posuere neque.",
      "version": 7.27,
      "image": "https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?s=612x612&w=0&k=20&c=uS4knmZ88zNA_OjNaE_JCRuq9qn3ycgtHKDKdJSnGdY="
    },
    {
      "name": "Abla Dilmurat",
      "language": "Uyghur",
      "id": "5ZVOEPMJUI4MB4EN",
      "bio": "Donec lobortis eleifend condimentum. Morbi ac tellus erat.",
      "version": 2.53,
      "image": "https://media.istockphoto.com/id/1320811404/photo/head-shot-portrait-smiling-confident-indian-businesswoman-with-arms-crossed.jpg?s=612x612&w=0&k=20&c=o-GfYeWu463WIoV4v2ws6qIxoO4gwcZH_I254yJsg3c="
    },
    {
      "name": "Adil Eli",
      "language": "Uyghur",
      "id": "6VTI8X6LL0MMPJCC",
      "bio": "Vivamus id faucibus velit, id posuere leo. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Suspendisse potenti.",
      "version": 6.49,
      "image": "https://media.istockphoto.com/id/1437875226/photo/hispanic-woman-working-at-consultation-office-looking-to-side-relax-profile-pose-with-natural.jpg?s=612x612&w=0&k=20&c=C9ZGlXs2QVEZqsP6Sai4eULXpNvmpgyX60L_ho9uvQk="
    },
    {
      "name": "Adile Qadir",
      "language": "Uyghur",
      "id": "F2KEU5L7EHYSYFTT",
      "bio": "Duis commodo orci ut dolor iaculis facilisis. Morbi ultricies consequat ligula posuere eleifend. Aenean finibus in tortor vel aliquet. Fusce eu ultrices elit, vel posuere neque.",
      "version": 1.9,
      "image": "https://media.istockphoto.com/id/1338134319/photo/portrait-of-young-indian-businesswoman-or-school-teacher-pose-indoors.jpg?s=612x612&w=0&k=20&c=Dw1nKFtnU_Bfm2I3OPQxBmSKe9NtSzux6bHqa9lVZ7A="
    },
    {
      "name": "Abdukerim Ibrahim",
      "language": "Uyghur",
      "id": "LO6DVTZLRK68528I",
      "bio": "Vivamus id faucibus velit, id posuere leo. Nunc aliquet sodales nunc a pulvinar. Nunc aliquet sodales nunc a pulvinar. Ut viverra quis eros eu tincidunt.",
      "version": 5.9,
      "image": "https://media.istockphoto.com/id/1471845315/photo/happy-portrait-or-business-woman-taking-a-selfie-in-office-building-for-a-social-media.jpg?s=612x612&w=0&k=20&c=AOylBL01joI0zphCAFr6YVrsOgp_jd2XtVUychLXYho="
    }
  ];
/*{
      "name": "Adil Abro",
      "language": "Sindhi",
      "id": "LJRIULRNJFCNZJAJ",
      "bio": "Etiam malesuada blandit erat, nec ultricies leo maximus sed. Fusce congue aliquam elit ut luctus. Etiam malesuada blandit erat, nec ultricies leo maximus sed. Cras dictum dolor lacinia lectus vehicula rutrum. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero.",
      "version": 9.32
    },
    {
      "name": "Afonso Vilarchán",
      "language": "Galician",
      "id": "JMCL0CXNXHPL1GBC",
      "bio": "Fusce eu ultrices elit, vel posuere neque. Morbi ac tellus erat. Nunc tincidunt laoreet laoreet.",
      "version": 5.21
    },
    {
      "name": "Mark Schembri",
      "language": "Maltese",
      "id": "KU4T500C830697CW",
      "bio": "Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Morbi ultricies consequat ligula posuere eleifend. Vivamus id faucibus velit, id posuere leo. Sed laoreet posuere sapien, ut feugiat nibh gravida at. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
      "version": 3.17
    },
    {
      "name": "Antía Sixirei",
      "language": "Galician",
      "id": "XOF91ZR7MHV1TXRS",
      "bio": "Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. Morbi finibus dui sed est fringilla ornare. Duis pellentesque ultrices convallis. Morbi ultricies consequat ligula posuere eleifend.",
      "version": 6.44
    },
    {
      "name": "Aygul Mutellip",
      "language": "Uyghur",
      "id": "FTSNV411G5MKLPDT",
      "bio": "Duis commodo orci ut dolor iaculis facilisis. Nam semper gravida nunc, sit amet elementum ipsum. Donec pellentesque ultrices mi, non consectetur eros luctus non. Pellentesque massa sem, scelerisque sit amet odio id, cursus tempor urna.",
      "version": 9.1
    },
    {
      "name": "Awais Shaikh",
      "language": "Sindhi",
      "id": "OJMWMEEQWMLDU29P",
      "bio": "Nunc aliquet sodales nunc a pulvinar. Ut dictum, ligula eget sagittis maximus, tellus mi varius ex, a accumsan justo tellus vitae leo. Donec pellentesque ultrices mi, non consectetur eros luctus non. Nulla finibus massa at viverra facilisis. Nunc tincidunt laoreet laoreet.",
      "version": 1.59
    },
    {
      "name": "Ambreen Ahmed",
      "language": "Sindhi",
      "id": "5G646V7E6TJW8X2M",
      "bio": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Ut maximus, libero nec facilisis fringilla, ex sem sollicitudin leo, non congue tortor ligula in eros.",
      "version": 2.35
    },
    {
      "name": "Celtia Anes",
      "language": "Galician",
      "id": "Z53AJY7WUYPLAWC9",
      "bio": "Nullam ac sodales dolor, eu facilisis dui. Maecenas non arcu nulla. Ut viverra quis eros eu tincidunt. Curabitur quis commodo quam.",
      "version": 8.34
    },
    {
      "name": "George Mifsud",
      "language": "Maltese",
      "id": "N1AS6UFULO6WGTLB",
      "bio": "Phasellus tincidunt sollicitudin posuere. Ut accumsan, est vel fringilla varius, purus augue blandit nisl, eu rhoncus ligula purus vel dolor. Donec congue sapien vel euismod interdum. Cras dictum dolor lacinia lectus vehicula rutrum. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula.",
      "version": 7.47
    },
    {
      "name": "Aytürk Qasim",
      "language": "Uyghur",
      "id": "70RODUVRD95CLOJL",
      "bio": "Curabitur ultricies id urna nec ultrices. Aliquam scelerisque pretium tellus, sed accumsan est ultrices id. Duis commodo orci ut dolor iaculis facilisis.",
      "version": 1.32
    },
    {
      "name": "Dialè Meso",
      "language": "Sesotho sa Leboa",
      "id": "VBLI24FKF7VV6BWE",
      "bio": "Maecenas non arcu nulla. Vivamus id faucibus velit, id posuere leo. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
      "version": 6.29
    },
    {
      "name": "Breixo Galáns",
      "language": "Galician",
      "id": "4VRLON0GPEZYFCVL",
      "bio": "Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero. Morbi ac tellus erat. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Vestibulum pharetra libero et velit gravida euismod. Cras dictum dolor lacinia lectus vehicula rutrum.",
      "version": 1.62
    },
    {
      "name": "Bieito Lorme",
      "language": "Galician",
      "id": "5DRDI1QLRGLP29RC",
      "bio": "Ut viverra quis eros eu tincidunt. Morbi vitae nisi lacinia, laoreet lorem nec, egestas orci. Curabitur quis commodo quam. Morbi ac tellus erat.",
      "version": 4.45
    },
    {
      "name": "Azrugul Osman",
      "language": "Uyghur",
      "id": "5RCTVD3C5QGVAKTQ",
      "bio": "Maecenas tempus neque ut porttitor malesuada. Donec lobortis eleifend condimentum.",
      "version": 3.18
    },
    {
      "name": "Brais Verdiñas",
      "language": "Galician",
      "id": "BT407GHCC0IHXCD3",
      "bio": "Quisque maximus sodales mauris ut elementum. Ut viverra quis eros eu tincidunt. Sed eu libero maximus nunc lacinia lobortis et sit amet nisi. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Curabitur quis commodo quam.",
      "version": 5.01
    },
    {
      "name": "Ekber Sadir",
      "language": "Uyghur",
      "id": "AGZDAP8D8OVRRLTY",
      "bio": "Quisque efficitur vel sapien ut imperdiet. Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. In id elit malesuada, pulvinar mi eu, imperdiet nulla. Sed nec suscipit ligula. Integer vehicula, arcu sit amet egestas efficitur, orci justo interdum massa, eget ullamcorper risus ligula tristique libero.",
      "version": 2.04
    },
    {
      "name": "Doreen Bartolo",
      "language": "Maltese",
      "id": "59QSX02O2XOZGRLH",
      "bio": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Nam semper gravida nunc, sit amet elementum ipsum. Ut viverra quis eros eu tincidunt. Curabitur sed condimentum felis, ut luctus eros.",
      "version": 9.31
    },
    {
      "name": "Ali Ayaz",
      "language": "Sindhi",
      "id": "3WNLUZ5LT2F7MYVU",
      "bio": "Cras dictum dolor lacinia lectus vehicula rutrum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Etiam malesuada blandit erat, nec ultricies leo maximus sed.",
      "version": 7.8
    },
    {
      "name": "Guzelnur Polat",
      "language": "Uyghur",
      "id": "I6QQHAEGV4CYDXLP",
      "bio": "Nam laoreet, nunc non suscipit interdum, justo turpis vestibulum massa, non vulputate ex urna at purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam consequat enim lorem, at tincidunt velit ultricies et. Nulla finibus massa at viverra facilisis.",
      "version": 8.56
    },
    {
      "name": "John Falzon",
      "language": "Maltese",
      "id": "U3AWXHDTSU0H82SL",
      "bio": "Sed nec suscipit ligula. Nullam sodales convallis mauris, sit amet lobortis magna auctor sit amet.",
      "version": 9.96
    },
    {
      "name": "Erkin Qadir",
      "language": "Uyghur",
      "id": "GV6TA1AATZYBJ3VR",
      "bio": "Phasellus massa ligula, hendrerit eget efficitur eget, tincidunt in ligula. .",
      "version": 3.53
    },
    {
      "name": "Anita Rajput",
      "language": "Sindhi",
      "id": "XLLVD0NO2ZFEP4AK",
      "bio": "Nam semper gravida nunc, sit amet elementum ipsum. Etiam congue dignissim volutpat.",
      "version": 5.16
    },
    {
      "name": "Ayesha Khalique",
      "language": "Sindhi",
      "id": "Q9A5QNGA0OSU8P6Y",
      "bio": "Morbi vitae nisi lacinia, laoreet lorem nec,\n\n egestas orci. Etiam mauris magna, fermentum vitae \n\naliquet eu, cursus vitae sapien.",
      "version": 3.9
    }];

*/

}
