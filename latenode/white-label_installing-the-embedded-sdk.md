---
url: "https://help.latenode.com/white-label/prjuBbArcjESidVHw/installing-the-embedded-sdk/odvEmPGSqkfeksqfLiZf"
title: "Installing the embedded SDK – Latenode | Help Center"
---

 Installing the embedded SDK

Instructions for integrating and configuring the embedded iFrame mode, enabling seamless embedding of content across platforms.


This article describes how to integrate the Latenode platform into your project using the SDK.

 Container Setup Inside the Website

To use the SDK, you need to prepare a container where the iframe will be rendered. Ensure that the container is already present in the DOM tree.

 SDK Configuration

Add the following tag to your website:

```
<script src="https://embedded.latenode.com/static/sdk/...js"></script>
```

Once this script is executed, the `LatenodeEmbeddedSDK` class will be added to the global `window` object.

 Methods of SDK

 configure

The method allows rendering an `iframe`. To do this, you need to call the method on an instance of the `LatenodeEmbeddedSDK` class.

```
const latenodeSDK = new LatenodeEmbeddedSDK();
latenodeSDK.configure({
  token: 'USER_JWT_TOKEN',
  container: 'lowCodeDivContainer',
  ui: {
    scenarios: {
      hideEmptyScenariosGreetings: true,
      hideExploreAppsButton: true
    },
    main: {
      hideSideMenu: true
    }
  },
  navigation: {
    handler: ({ route }) => {
      console.log('user navigated to ' + route);
    }
  }
}).then(() => {
 console.log('iframe rendered');
});
```

This method returns a `Promise` that resolves once the `iframe` has been loaded and rendered inside the specified `container`.

 Configuration Parameters

- Field: `token`

Type: `string`
Required: `true`
Description: The JWT token created for the user

  

- Field: `container`

Type: `string | HTMLElement`
Required: `true`
Description: The ID of the container or a reference to the DOM element where the iframe will be rendered

  

- Field: `ui.scenarios.hideEmptyScenariosGreetings`

Type: `boolean`
Required: `false`
Description: Whether to hide the greeting message when the scenario list is empty

  

- Field: `ui.scenarios.hideExploreAppsButton`

Type: `boolean`
Required: `false`
Description: Whether to hide the explore apps button when the scenario list is empty

  

- Field: `ui.main.hideSideMenu`

Type: `boolean`
Required: `false`
Description: Whether to hide the main navigation menu (section list)

  

- Field: `navigation.handler`

Type: `(data: { route: string }) => void`
Required: `false`
Description: A navigation event handler within the iframe. The function will be called every time the application's current route changes

  

 navigate

This method allows navigation within the iframe. For example:

```
LatenodeSDK.navigate({ to: '/scenarios' });
```

 cleanup

The SDK has side effects in its operation. To properly finalize work with the `iframe`, it is recommended to call the cleanup method, which will remove all registered callbacks in `window`, for example:

```
LatenodeSDK.cleanup();
```