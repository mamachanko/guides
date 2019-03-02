
# The pocket-sized guide to TDD

```
tl;dr
    write a failing test from the outside in
    make it pass
    refactor towards good design
    take a break and repeat
```

## Why you want tests
> TODO why?

## From red to green to great
### Red / Write a failing test
 * Write a single failing test at a time.
 * Stick to the [AAA pattern](http://wiki.c2.com/?ArrangeActAssert):
   * _Arrange_ the subject under test and all required inputs
   * _Act_ on the subject under test
   * _Assert_ the expected outputs
 * If it is hard to test, its design probably needs improvement. Pay attention to your resistance. When writing the test is painful it is telling you something.
 * [Test from the outside in.](http://blog.ploeh.dk/2013/03/04/outside-in-tdd-versus-ddd/)
 * Treat the subject under test a black box. We can only control its inputs and observe its outputs. If something is not observable it is irrelevant. 
 * Test the public interface of the unit under test.
 * Do not test private methods.
 * [Use mocks for commands and stubs for queries.](http://blog.ploeh.dk/2013/10/23/mocks-for-commands-stubs-for-queries/)
 * Favour pure functions over everything else. Pure functions are the testable by design. A function is pure if it always produces the same output for a given input and has no side-effects.
 * If you're testing a Spring application's endpoints you will want to work [these](https://gist.github.com/mamachanko/32d6d4cbb0af1916f2eddb642545b5f9) annotations.
 * You must have seen it a test fail to trust it.
 * Run all the tests in your test class together. 
 * End the day with a failing test. Tomorrow you will know exactly where to pick up. 
 
### Green / Make it pass

Do the simplest thing to get the failing test to green.

> TODO more here. but what?

["But when do write the _real code_?"](https://softwareengineering.stackexchange.com/questions/354384/when-do-you-write-the-real-code-in-tdd)

### Great / Refactor
Refactor to improve the code. Since your details make no assumptions about the internals of your class you are free to refactor
to your heart's content. Keep running the tests often to make sure you haven't left the green track.

Ask yourself these questions:
 * Is it DRY?
 * Does it have one and only one responsibility? In other words, there should be only one reason for a thing to change.
 * Does everything inside change at the same rate?
 * Does my class depend on things that change less often than itself does?
 * Is there a clean separation between _commands_ and _queries_ - [CQS](https://martinfowler.com/bliki/CommandQuerySeparation.html)?

Now you should probably take a break. Breaks are like water. You should have it before you need it. There are methods
and tools to facilitate a sustainable pace. The most popular one is [Pomodoro](https://en.wikipedia.org/wiki/Pomodoro_Technique).
[Here](https://pomodoro.cfapps.io/)'s the timer [I built](https://github.com/mamachanko/pomodoro), but there are many many others.

## When it impedes progress
> TODO discuss speed "it slows me down!"

## Invest in this:
 * [The World's Best Intro to TDD](https://online-training.jbrains.ca/p/wbitdd-01)
 * [Testing Javascript](https://testingjavascript.com/)

## Watch and read this:
Here a few seminal articles and talks to get you started:
 * cyclomatic complexity (TODO)
 * builders, fixtures, etc. patterns, constructor violates dry and encapsulation (TODO)
 * [SOLID Object-oriented design](https://www.youtube.com/watch?v=v-2yFMzxqwU) - Sandi Metz
 * [Mocks aren't stubs](https://martinfowler.com/articles/mocksArentStubs.html) - Martin Fowler
 * [The Little Mocker](https://blog.cleancoder.com/uncle-bob/2014/05/14/TheLittleMocker.html) - Robert C. Martin
There is more:
 * In general, listen to what [Sandi Metz](https://www.sandimetz.com/), [J.B. Rainsberger](https://blog.thecodewhisperer.com/) and [Mark Seemann](http://blog.ploeh.dk) are saying.
 * [Test-Driven Development by Example](https://www.oreilly.com/library/view/test-driven-development/0321146530/) - Kent Beck
 * [Practical object-oriented design](https://www.poodr.com/)
 * Learn to distinguish the different flavours of test doubles: [dummy, fake, stub, spy and mock](https://martinfowler.com/bliki/TestDouble.html). Unlike common believe not everything is a mock. If you use Mockito check [this](https://www.javaworld.com/article/2074508/core-java/mocks-and-stubs---understanding-test-doubles-with-mockito.html).
 * Familiarise yourself with the SOLID principles. [This course](https://app.pluralsight.com/library/courses/encapsulation-solid/table-of-contents) is great.
 * Learn your editor's features and shortcuts so your train of thought gets interrupted as little as possible.

---
> built with ❤️ by [mamachanko](https://github.com/mamachanko/guides)
