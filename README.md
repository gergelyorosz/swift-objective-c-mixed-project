# Swift 2.0 and  Objective C in a Mixed Project
Example code on how to use Objective C and Swift components together in a project. Use cases:
- **Invoking Objective C classes from Swift**
  - In the same project
  - Unit testing Objective C classes from Swift
- **Invoking Swift classes from Objective C**
  - In the same project
  - Unit testing Swift classes from Objective C

### Why
Since the announcement of Swift it has been possible to use Objective C and Swift code together in the same project. However even with XCode 7, using the two languages together is not very straightforward and the [Apple documentation](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html) doesn't provide a working example to demonstrate this usage.

This sample makes it easy to get started. It also serves as a guide on using Swift 2.0 and Objective C together in applications for XCode 7.0 upwards.

### Invoking Objective C code from Swift

- Add the Objective C header file to the [Bridging header](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html)
- E.g. in the `MixedLanguageExample` project e.g. to use the `ComponentObjectiveC` class from any Swift file in the project
  - In *MixedLanguageExample/MixedLanugageExample-Bridging-Header.h* add
  ```
  #import "ComponentObjectiveC.h"
  ```
  - After this `ComponentObjectiveC` can be used in any Swift file within the `MixedLanguageExample` project (e.g. as used in `LabelSwift.swift`)

#### Unit testing Objective C classes from Swift

- Import Objective C classes to test via the test target's bridging header.
- E.g. to test the `ComponentObjectiveC` Objective C class from *ComponentObjectiveCFromSwiftTests.swift*:
  - In the unit test file *MixedLanugageExampleTests / MixedLanugageExampleTests-Bridging-Header.h*
  - import the Objective C header file
  ```
  #import "ComponentObjectiveC.h"
  ```

### Invoking Swift code from Objective C

- Import the [XCode generated header file](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html) to use it in the `.m` file
- E.g. in the `MixedLanguageExample` to use the `ComponentSwift` class from `LabelObjectiveC`:
  - Make sure for the main target, under *Build Settings* --> *Defines Module* is set to *Yes*
  - In `LabelObjectiveC.m` add
  ```
  #import "MixedLanugageExample-Swift.h"
  ```

#### Unit Testing Swift classes from Objective C

- Make sure for the test target (in the example, *MixedLanugageExampleTests*), under *Build Settings* --> *Defines Module* is set to *Yes*
- Import the XCode generated header file in unit tests:
  - E.g. in `ComponentSwiftFromObjectiveCTests.m`
  - Import the XCode genrated header file for the test target by adding
  ```
  #import "MixedLanugageExampleTests-Swift.h"
  ```

### FAQ
- **Q**: What about working with Swift 1.0 using XCode 6.xx?

  **A**: The steps are exactly the same. I created the sample using XCode 7.0 beta as it has better Swift support (even if the beta is unstable)
  
- **Q**: When testing Objective C classes using Swift, do I need to re-import the Objective C header files in the bridging header, in my test project? I've already done this in my production project. 

  **A**: Seems like this is the only way to do it. Think of the bridging header as the new prefix header for Swift to work with Objective C.
