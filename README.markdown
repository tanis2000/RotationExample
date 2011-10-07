# Main features

This project comes from my frustration with iOS trying to find a way to have completely different layouts between portrait and landscape and between iPhone and iPad.

So this is the way I handle rotating the screen in iOS. I wanted to stick to Interface Builder for the layout of my views as I can handle them out to a designer and let him rearrange the content as he likes. At the same time I wanted to reduce the code which is dependant on the orientation to a minimum.

As you will see, the concepts behind the courtains are simple:

- Everything is cointained in an UINavigationController that has the toolbar hidden.
- On application startup, we attach either the iPad or iPhone portrait UIViewController depending on the device.
- When orientation changes to landscape, we push the correct landscape UIViewController on the stack. 
- When orientation goes back to portrait, we pop the landscape UIViewController from the stack.

On top of those basic principles there are a few issues that we have to handle:

- What if we have a modal controller on top of our portrait/landscape controller? We can't just push and pop if we rotate the device as we will close the modal as well.
- How should we set the autoresizing masks for the elements in our different controllers?
- Can we use a base class to handle all of the common IBOutlets?

All of this is covered in the code of the project. 

I hope this can save you some time as it really took me some effort to come up with a satisfying solution. I'm not saying that this is the best, but it certainly fits my needs.

# Copyright notice

	Author: Valerio Santinelli <tanis2000@hotmail.com>

    Copyright (c) 2011 Valerio Santinelli.
    All rights reserved.

    Permission is hereby granted, free of charge, to any person
    obtaining a copy of this software and associated documentation
    files (the "Software"), to deal in the Software without
    restriction, including without limitation the rights to use,
    copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following
    conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
    OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
    HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
    WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
    OTHER DEALINGS IN THE SOFTWARE.
