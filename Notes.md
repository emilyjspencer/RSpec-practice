# Notes

MOCKING AND TEST DRIVEN DEVELOPMENT

MOCKING comes in useful when it comes to test driven development, e.g.
if you have five classes interacting with each other, you don't have to write all five of them first, you can just write one and mock out the other four that haven't been written yet.

You can build them incrementally, assuming that they're going to exist at some point, and assuming that they're going to have some sort of interface, while not knowing exactly how you're going to build it.