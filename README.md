# Node with Chrome Headless for Gitlab CI Runner

This is a simple docker container for running karma unit tests with chrome headless.

### Usage

Simply configure and run the test like every other day and run the tests. For example:

*karma.conf.js*
```javascript
browsers: [
    'ChromeHeadless_NoSandbox',
],

customLaunchers: {
    ChromeHeadless_NoSandbox: {
        base: 'ChromeHeadless',
        flags: [
            '--no-sandbox',
            '--disable-setuid-sandbox',
            '--lang=en_GB,en',
            '--disable-gpu',
            '--remote-debugging-port=9222',
        ],
    },
},
```

```bash
$ npm run tests
```