# szh assistant

szh Assistant is used to facilitate the creation of applications and contains some basic things in each application, such as the appbar and dialog, the most used text sizes and the most used colors, and it is also responsive with all screen sizes, and it also contains font Cairo

# To Configure Your App & Add Basic things in your application (automatically)
used before ```return MaterialApp(); ```

```

import 'package:szhassistant/runmain/conf.dart';

...

myConf(color:black, backgroundColor: white);

...
```
# Use My MaterialApp To Custom And Add Basic things in your application (automatically), Like(disable debug banner , Application texts are not affected by changing the system font size )

used:return myMaterialApp(Stful_or_stless_here, "Title Here");

```
...

return myMaterialApp(const Home(), "My Example");

...


```

# Use SizeConfig (used to make text font responsive with all screen sizes)
used in ```Widget build(BuildContext context) { ```

```

SizeConfig().init(context);


```
And used with Text and Support textSize from 0.1 like ```textSize0_1``` to 6 like ```textSize6```

```
Text("text here",
style:TextStyle(fontSize: SizeConfig.blockSizeVertical * textSize2_5),
)
```

# Use getSize (It is used to bring a screen size that fits all screen sizes and supports the ability to flip the screen without affecting the design by return size 'double') 

used
```
Container(
...
height:getSize(context, 0.1),
... 
)
```

# Use [getSizeHeight , getSizeWidth] (same function of getSize but return [height, width] ) 
used
```
Container(
...
height:getSizeHeight(context, 0.1),
width:getSizeWidth(context, 0.3),
... 
)
```




# Use myAppBar (used to generate custom appbar with support rtl or ltr design and basic configuration of app bar)

```
...

myAppBar(
            context,
            color: black,
            title: "My Example",
            disableTitle: false,
            centerTitle: false,
            height: 0.2,
            leading: const Icon(Icons.home),
            rtl: false,
            disableActions: true,
            space: Container(
              padding: EdgeInsets.all(getSize(context, 0.01)),
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: getSizeHeight(context, 0.1),
                  bottom: getSizeHeight(context, 0.01),
                  right: getSizeHeight(context, 0.01),
                  left: getSizeHeight(context, 0.01)),
              decoration: BoxDecoration(
                  color: gray,
                  borderRadius: BorderRadius.all(
                      Radius.circular(getSize(context, 0.02)))),
              height: getSizeHeight(context, 0.2),
              child: Text(
                "App Bar Body Here",
                style: TextStyle(
                    color: white,
                    fontSize: SizeConfig.blockSizeVertical * textSize2_5),
              ),
            ),
            elevation: 0,
            topRight: 0,
            topLeft: 0,
            bottomLeft: getSize(context, 0.02),
            bottomRight: getSize(context, 0.02)),

...

```

# Note: border of appbar (topRight,topLeft,bottomLeft,bottomRight) 

# Use showMyDailog
used
```

...

 showMyDailog(context,
                  title: const Text("Title Here:"),
                  children: [
                    const Text("Children Here"),
                  ]);

...

```




