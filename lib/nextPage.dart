import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_info_just/info.dart';
import 'package:medical_info_just/provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: WillPopScope(
          onWillPop: () => Provider.of<MyProvider>(context, listen: false)
              .onWillPop(context, 'NextPage'),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(Provider.of<MyProvider>(context).idx),
            ),
            body: Provider.of<MyProvider>(context, listen: false).idx ==
                    'صحة الفم'
                ? ListView(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    children: [
                      _listTile("سرطان الفم", 'MouthPage1'),
                      _listTile("كسور ورضوض الأسنان", 'MouthPage2'),
                      _listTile("تفريش الأسنان", 'MouthPage3'),
                      _listTile("خيط الأسنان", 'MouthPage4'),
                    ],
                  )
                : Provider.of<MyProvider>(context, listen: false).idx ==
                        'طب الأسنان التجميلي'
                    ? ListView(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                        children: [
                          buildAutoSizeText(Nice().s1, 17.00),
                          _listTile("التبييض", 'NicePage1'),
                          _listTile("مجوهرات الأسنان", 'NicePage2'),
                          _listTile("القشور الخزفية والزيريكون", 'NicePage3'),
                          _listTile("الإبتسامة اللثوية", 'NicePage4'),
                        ],
                      )
                    : Provider.of<MyProvider>(context, listen: false).idx ==
                            'العلاج الوقائي'
                        ? ListView(
                            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                            children: [
                              buildAutoSizeText(Treat().s1, 16.00),
                              _listTile("المادة السادة الوقائية", 'TreatPage1'),
                              _listTile("الفلورايد", 'TreatPage2'),
                              _listTile("الزيارة المنتظمة لطبيب الاسنان",
                                  'TreatPage3'),
                            ],
                          )
                        : Provider.of<MyProvider>(context, listen: false).idx ==
                                'العادات الفموية السيئة'
                            ? ListView(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                children: [
                                  buildAutoSizeText(Habit().s1, 16.00),
                                  _listTile(
                                      "استخدام الأسنان كأداة",'HabitPage1'),
                                  _listTile("قضم الأظافر",'HabitPage2'),
                                  _listTile("صرير الأسنان",'HabitPage3'),
                                  _listTile("أخطاء تنظيف الأسنان", 'HabitPage4'),
                                  _listTile("قضم قطع الثلج", 'HabitPage5'),
                                  _listTile("الوجبات الخفيفة", 'HabitPage6'),
                                ],
                              )
                            : Provider.of<MyProvider>(context, listen: false)
                                        .idx ==
                                    'أمراض اللثة'
                                ? ListView(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 15, 10, 0),
                                    children: [
                                      const SizedBox(height: 20),
                                      _listTile("أجزاء السن",'DisPage1'),
                                      _listTile("",'DisPage2'),
                                      _listTile("",'DisPage3'),
                                    ],
                                  )
                                : ListView(
                                    children: [],
                                  ),
            floatingActionButton: _floatingFun(),
          ),
        ),
      ),
    );
  }

  Padding _listTile(text, route) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListTile(
        title: Text(
          text,
          style: const TextStyle(fontSize: 19, color: Colors.black),
        ),
        trailing: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        onTap: () => Navigator.of(context).pushNamed(route),
      ),
    );
  }

  Padding buildAutoSizeText(text, size, [color = Colors.black, weight]) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AutoSizeText(
        text,
        style: GoogleFonts.ibmPlexSansArabic(
          textStyle:
              TextStyle(fontSize: size, color: color, fontWeight: weight),
        ),
        overflow: TextOverflow.fade,
      ),
    );
  }

  TextButton _textButton(res) {
    return TextButton(
        child: AutoSizeText(res,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.blue)),
        onPressed: () async => await launch(res));
  }

  FloatingActionButton _floatingFun() {
    return FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            context: context,
            builder: (_) {
              if (Provider.of<MyProvider>(context).idx == 'صحة الفم')
                return bottomSheet1();
              else if (Provider.of<MyProvider>(context).idx ==
                  'طب الأسنان التجميلي')
                return bottomSheet2();
              else if (Provider.of<MyProvider>(context).idx == 'العلاج الوقائي')
                return bottomSheet3();
              else if (Provider.of<MyProvider>(context).idx == 'أمراض اللثة')
                return bottomSheet4();
              else if (Provider.of<MyProvider>(context).idx == 'العادات الفموية السيئة')
                return bottomSheet5();
              return bottomSheet1();
            }),
        child: const Text('المراجع'));
  }

  Directionality bottomSheet1() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "المراجع",
            style: const TextStyle(
                color: CupertinoColors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 1,
        ),
        body: ListView(
          children: [
            buildAutoSizeText(
                "1- Rivera C. Essentials of oral cancer. International journal of clinical and experimental pathology. 2015;8(9):11884.",
                16.00),
            _textButton(
                'https://www.ncbi.nlm.nih.gov/pmc/articles/pmc4637760/'),
            buildAutoSizeText(
                "2- Bagan J, Sarrion G, Jimenez Y. Oral cancer: clinical features. Oral oncology. 2010;46(6):414-7.",
                16.00),
            _textButton(
                'https://www.sciencedirect.com/science/article/pii/S1368837510000989'),
            buildAutoSizeText(
                "3- Fazal-ur-Rehman M, Akram S. Half-Life and Decay Law of Actinide Elements. Chem Sci J.2017:8:151.",
                16.00),
            _textButton(
                'https://www.researchgate.net/profile/Sana-Akram/publication/318853186_Half-Life_Decay_Law_of_Actinide_Elements/links/5b10c30caca2723d9978d6a9/Half-Life-Decay-Law-of-Actinide-Elements.pdf '),
            buildAutoSizeText(
                "4- Tewari N, Bansal K, Mathur VP. Dental trauma in children: a quick overview on management. The Indian Journal of Pediatrics. 2019;86(11):1043-7.",
                16.00),
            _textButton(
                'https://link.springer.com/article/10.1007/s12098-019-02984-7'),
            buildAutoSizeText(
                "5- Patidar D, Sogi S, Patidar DC, Malhotra A. Traumatic dental injuries in pediatric patients: a retrospective analysis. International journal of clinical pediatric dentistry. 2021;14(4):506.",
                16.00),
            _textButton(
                'https://www.ncbi.nlm.nih.gov/pmc/articles/pmc8585915/'),
            buildAutoSizeText(
                "6- Banerji S, Mehta S, Millar B. The management of cracked tooth syndrome in dental practice. British dental journal. 2017;222(9):659-66.",
                16.00),
            _textButton('https://www.nature.com/articles/sj.bdj.2017.398'),
            buildAutoSizeText(
                "7- Hasan S, Singh K, Salati N. Cracked tooth syndrome: overview of literature. International Journal of Applied and Basic Medical Research. 2015;5(3):164.",
                16.00),
            _textButton(
                'https://www.ncbi.nlm.nih.gov/pmc/articles/pmc4606573/'),
            buildAutoSizeText(
                "8- Harnacke D, Mitter S, Lehner M, Munzert J, Deinzer R. Improving oral hygiene skills by computer-based training: a randomized controlled comparison of the modified Bass and the Fones techniques. PloS one. 2012;7(5):e37072.",
                16.00),
            _textButton(
                'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0037072'),
            buildAutoSizeText(
                "9- Wainwright J, Sheiham A. An analysis of methods of toothbrushing recommended by dental associations, toothpaste and toothbrush companies and in dental texts. British dental journal. 2014;217(3):E5-E.",
                16.00),
            _textButton(
                'https://www.nature.com/articles/sj.bdj.2014.651?report=reader '),
            buildAutoSizeText(
                "10- Hayasaki H, Saitoh I, Nakakura-Ohshima K, Hanasaki M, Nogami Y, Nakajima T, et al. Tooth brushing for oral prophylaxis. Japanese Dental Science Review. 2014;50(3):69-77.",
                16.00),
            _textButton(
                'https://www.sciencedirect.com/science/article/pii/S1882761614000180'),
            buildAutoSizeText(
                "11- Bergenholtz A, Gustafsson LB, Segerlund N, Hagberg C, Östby PN. Role of brushing technique and toothbrush design in plaque removal. European Journal of Oral Sciences. 1984;92(4):344-51.",
                16.00),
            _textButton(
                'https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1600-0722.1984.tb00901.x '),
            buildAutoSizeText(
                "12- Bartram L, Ware C. Filtering and brushing with motion. Information Visualization. 2002;1(1):66-79.",
                16.00),
            _textButton(
                'https://journals.sagepub.com/doi/abs/10.1057/palgrave.ivs.9500005'),
            buildAutoSizeText(
                "13- Christou V, Timmerman MF, Van der Velden U, Van der Weijden FA. Comparison of different approaches of interdental oral hygiene: interdental brushes versus dental floss. Journal of periodontology. 1998;69(7):759-64.",
                16.00),
            _textButton(
                'https://aap.onlinelibrary.wiley.com/doi/abs/10.1902/jop.1998.69.7.759'),
            buildAutoSizeText(
                "14- Berchier C, Slot D, Haps S, Van der Weijden G. The efficacy of dental floss in addition to a toothbrush on plaque and parameters of gingival inflammation: a systematic review. International journal of dental hygiene. 2008;6(4):265-79.",
                16.00),
            _textButton(
                'https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1601-5037.2008.00336.x'),
          ],
        ),
      ),
    );
  }

  Directionality bottomSheet2() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "المراجع",
            style: TextStyle(
                color: CupertinoColors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 1,
        ),
        body: ListView(
          children: [
            buildAutoSizeText(Nice().s30, 16.00),
            _textButton(
                'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3713859/.'),
            _textButton(
                'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6312728/.'),
          ],
        ),
      ),
    );
  }

  Directionality bottomSheet3() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "المراجع",
            style: TextStyle(
                color: CupertinoColors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 1,
        ),
        body: ListView(
          children: [
            buildAutoSizeText(Treat().res, 16.00),
            _textButton('https://teethtalkgirl.com/videos/dental-sealants'),
            _textButton(
                'https://www.oceansightdental.com/preventive-dentistry-san-clemente/dental-sealants-san-clemente/'),
            _textButton(
                'http://www.newhopeorthodontics.com/treatment/cosmetic-dentistry/tooth-wear'),
          ],
        ),
      ),
    );
  }

  Directionality bottomSheet4() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "المراجع",
            style: TextStyle(
                color: CupertinoColors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 1,
        ),
        body: ListView(
          children: [
            buildAutoSizeText(Dis().res1, 16.00),
            _textButton('https://www.ncbi.nlm.nih.gov/books/NBK541126/'),
            buildAutoSizeText(Dis().res2, 16.00),
            _textButton('https://onlinelibrary.wiley.com/doi/abs/10.1111/jcpe.12939'),
            buildAutoSizeText(Dis().res3, 16.00),
            _textButton('https://journals.sagepub.com/doi/abs/10.1177/2380084420948779'),
            buildAutoSizeText(Dis().res4, 16.00),
            _textButton('https://dental-almanac.org/index.php/journal/article/view/476'),
            buildAutoSizeText(Dis().res5, 16.00),
            _textButton('https://europepmc.org/article/nbk/nbk554590'),
            buildAutoSizeText(Dis().res6, 16.00),
            _textButton('https://books.google.com/books?hl=ar&lr=&id=Skr9DwAAQBAJ&oi=fnd&pg=PA55&dq=ALShami,+A.,+ALHarthi,+S.,+Binshabaib,+M.,+%26+Wahi,+M.+(2019).+Tooth+Morphology+Overview.+In+Human+Teeth-Key+Skills+and+Clinical+Illustrations.+IntechOpen&ots=XqwJtLRKar&sig=Rx9vYqbhq4BvMk8LGPHsyWfu0_k'),
            buildAutoSizeText(Dis().res7, 16.00),
            _textButton('https://www.jmidlifehealth.org/article.asp?issn=0976-7800;year=2021;volume=12;issue=4;spage=263;epage=266;aulast=Boyapati'),
          ],
        ),
      ),
    );
  }

  Directionality bottomSheet5() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "المراجع",
            style: TextStyle(
                color: CupertinoColors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 1,
        ),
        body: ListView(
          children: [
            buildAutoSizeText(Habit().res, 16.00),
            _textButton('https://www.sciencedirect.com/science/article/pii/S0300571204001770?casa_token=_J-CMX2fZi0AAAAA:eVtRsed0M5spWOrv1Nv_QMlyB82lXjahebgqWt0UE-UP-G_DUgz_54k-MQi1dp6XjUX0vdiH'),
            _textButton(
                'https://scholar.google.com/scholar?hl=ar&as_sdt=0%2C5&q=Relationship+between+snacks+and+tooth+decay&btnG=#d=gs_qabs&u=%23p%3DE_9FrxX7dLAJ'),
          ],
        ),
      ),
    );
  }

}
