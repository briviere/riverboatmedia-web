---
title: Getting Started with Swift for Mobile Development or Server Side Development
description: Learning Swift
tags: Swift, iOS
date: 2020-09-09 08:00
highlight: true
---

## Getting Started with Xcode

If you have not done so alrealy download and install Xcode from the App Store.  Make sure you download the latest version of Xcode (11).

When you have Xcode installed and launched you will be presented with the welcome screen.  The welcome screen gives you many options, including Get Started with Playground and Create a new Xcode project (Figure 1.1).

Figure 1.1 welcome to Xcode

![](/api/collection/5791644751233024/4691340924289024/page/5927651454746624/image/5975705629229056)

Playgrounds provide an interactive environment for rapidly developing and evaluation Swift code and is a useful tools for learning swift. Playgrounds are also available as a standalone app on MacOS and iPadOS.

From the welcome screen select Get started with playground.

Figure 1.2 Naming a playground

![](/api/collection/5791644751233024/4691340924289024/page/5927651454746624/image/6736892012789760)

Next, name your playground MyPlayground. For the platform (iOS, macOS, or iPadOS). Choose the MacOS (Figure 1.3) playground and click next.

Figure 1.3 New Playground

![](/api/collection/5791644751233024/4691340924289024/page/5927651454746624/image/5079032086396928)

## Using the Playground

As you can see in Figure 1.3 a Swift playground opens with two sections. On the left, you have the Swift code editor. On the right, you have the results sidebar.

Let's take a look at the playground. Notice that the first line of text is green and that it begins with two forward slashes: //.

The next line in the playground imports the Coca framework.  This means that your playground has access to the Coco framework.

Below the import is a line that reads var str = "Hello, playground".  The text in quotes is copied on the right, in the results sidebar.  Sound you not see this click on the second square icon in the bottom left corner of the playground to execute the application.

Looking more closely at the statement you will notice the equal sign which is called the assignment operator. The assignment operator assigns the result of code on its righthand side to a constant or variable on its lefthand side. Swift keyword var is used to declare variable. A variable represents some value that you expect to change or vary.

On the right hand side is "Hello, playground". In Swift the quotation marks indicate a **String**, an ordered collection.

## Printing to the Console

```
import Cocoa

var str = "Hello, playground"
str += "!"
print(str)
```

After you enter the print line and the playground executes the debug console should appear at the bottom of the playground like Figure 1.4.

Figure 1.4 Your First Swift code

![](/api/collection/5791644751233024/4691340924289024/page/5927651454746624/image/5906132393525248)

