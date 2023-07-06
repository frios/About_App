# About_App

About_App is a drop-in About Page. It displays a single page with a product logo and additional information. It also handles rotation to landscape properly. The current implementation uses the Swift 5.9 Observation model and requires iOS 17 or macOS 13.

To use:

Add About_App as a Swift Package Dependency

Import About_App.

```
import About_App
```

Create an instance of About object. Create this where you will have access to pass it to the environment later.

```
let about = About()
```

Set the properties you want displayed. Most properties defualt to nil and will not display if not set explicitly.

```
about.appName = "My App"
about.createdBy = "Ferdinand G. Rios"
about.copyRight = "© 2020, My Company, Inc."
about.reservedRights = "All Rights Reserved"
about.companyName = "My Company, Inc."
about.address1 = "123 Any Street"
about.address2 = "Suite 1A"
about.city = "Big City"
about.state = "State of Mind"
about.zip = "1111"
about.webURL = "https://www.myapp.com"
about.twitter = "https://twitter.com/myapp"
about.facebook = "https://www.facebook.com/myapp"
about.linkedin = nil
about.instagram = "https://www.instagram.com/myapp"
about.supportString = nil
about.reviewString = "itms-apps://itunes.apple.com/app/id\(appID)"
```

Display the page and pass the About object into the environment.

```
AboutView()
    .environment(about)
```
