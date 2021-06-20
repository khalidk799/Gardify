import 'package:flutter/material.dart';
import 'Navigation.dart';
// import 'package:url_launcher/url_launcher.dart';

class Manure extends StatelessWidget {
  Manure({
    Key? key,
  }) : super(key: key);
  SizedBox customView(String imgvl, String heder, String description) {
    return SizedBox(
      width: 350,
      height: 550,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26.0),
          color: const Color(0xfff2fedc),
          boxShadow: [
            BoxShadow(
              color: const Color(0x33000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                child: Image.asset(
                  imgvl,
                  height: 225,
                  width: 300,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  description,
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 22,
                    color: const Color(0xff333131),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      drawer: Navigation(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Organic Manures you can make yourself',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 26,
                  color: Colors.green[800],
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: customView(
                        'assets/Manure/e.jpeg',
                        'Egg Shell Fertilizer',
                        'Egg shells contain a lot of calcium which helps with cellular growth in your plants. Calcium deficient soil can lead to blossom end rot on tomatoes and various other garden catastrophes. This egg shell fertilizer will help to end that. Just crush up used egg shells and then bury them in the soil. Or, you can make a spray with 20 egg shells and a gallon of water. Boil the shells in the water for just a few minutes and then leave overnight. Strain the shells and add the water to a spray bottle to spray directly onto your soil.',
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customView(
                      'assets/Manure/a.jpeg',
                      'Fireplace Ash Fertilizer',
                      'Fireplace ash provides calcium carbonate and potassium to plants. All you need to do is add the ash to the garden bed and then massage it into the soil. It may be best to do this right before planting so that you don\’t risk knocking your plants over or harming them while mashing the ash into the soil.',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customView(
                      'assets/Manure/h.jpeg',
                      'Kitchen waste manure',
                      'Step 1: Add Kitchen Waste in Container\n\nAdd kitchen waste like fruit peels, vegetables, eggshells, coffee or tea powder to a container.\n\nStep 2: Add the Browns\n\nArrange for the browns like dry shredded leaves, sawdust or cocopeat to control the moisture and add them to the wet garbage.\n\nStep 3: Arrange for Microbes\n\nArrange for microbes to break down the wet waste. Either get microbes from semi-done compost or generate a fresh patch by adding cow dung. You can also add buttermilk to kickstart the microbial colony.\n\nStep 4: Provide Oxygen\n\nIn aerobic composting, providing oxygen is very crucial for a smell-free composting cycle and to avoid crawlies like maggots. Either you can make perforated holes in your container or churn the pile of waste once every four days.\n\nStep 5: Layering\n\nAerobic composting will prepare manure in 40-45 days. All you have to do is keep adding kitchen waste daily and ensure oxygen flow. If the mix becomes soggy, add more browns to maintain the ration.',
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: customView(
                        'assets/Manure/t.jpeg',
                        'Animal droppings',
                        'Manure comes from a variety of sources — cows, horses, chickens, and even bats. Each type of manure is high in nitrogen and other nutrients, but you\’ll need to use it carefully. Raw manure is highly acidic and may actually have more nutrients than your plants need, so too much can burn your plants. It\’s best to use composted manure. Since it is less nutrient-dense and acidic, you can use more of it to improve your soil\'s water retention without risking your plants. You won\’t have to wait long—manure quickly turns to a perfect odor-free soil amendment',
                      )),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: customView(
                        'assets/Manure/c.jpeg',
                        'Coffee Grounds',
                        'Coffee grounds come with a lot of uses, but one of their best is as a fertilizer. Lots of plants, such as blueberries, rhododendron, roses, and tomatoes, thrive best in acidic soil. Recycle your coffee grounds to help acidify your soil. There are a couple of ways to do this— you can either top dress by sprinkling the used grounds over the surface of the soil, or you can make \“coffee\” to pour on your gardens. Soak up to six cups of used coffee grounds for up to a week to make garden coffee, then use it to water your acid-loving plants.',
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
