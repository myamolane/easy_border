# easy_border

A flutter package to let users easily add any kind of border around any widget

## Getting Started

### Rounded Border

```
import 'package:easy_border/easy_border.dart';

Bordered(
  child: TextField(
    width: 3,
    color: Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.transparent)),
    )
  ),
)

```

### Gradient Border

```
import 'package:easy_border/easy_border.dart';

Bordered(
  child: TextField(
    width: 3,
    gradient: LinearGradient(
      end: Alignment(0.5, 0.0),
      colors: [btnGradientStartColor, btnGradientEndColor],
      begin: Alignment.centerLeft,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
    decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.transparent)),
    )
  ),
)

```

You can both set gradient and color to configure the color of border, but gradient apply with higher priority. 
