___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Microsoft Monetize by Comprend",
  "categories": [
    "ADVERTISING",
    "CONVERSIONS",
    "ANALYTICS"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Comprend",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACABAMAAAAxEHz4AAAAIGNIUk0AAHomAACAhAAA+gAAAIDoAAB1MAAA6mAAADqYAAAXcJy6UTwAAAASUExURQAAAPJQIn+6AACk7/+5AP///z3nV7YAAAABdFJOUwBA5thmAAAAAWJLR0QF+G/pxwAAAAd0SU1FB+oJHBYAOFx9f04AAAAldEVYdGRhdGU6Y3JlYXRlADIwMjYtMDktMjhUMjI6MDA6MjMrMDA6MDD1/sIhAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDI2LTA5LTI4VDIyOjAwOjEyKzAwOjAwrFt2ygAAACh0RVh0ZGF0ZTp0aW1lc3RhbXAAMjAyNi0wOS0yOFQyMjowMDo1NiswMDowMItLffwAAABLSURBVGje7cxBDcAgAASwy4IAZmEKSLCAf004uPcerYDmrWbyfFUEAoFAIBAIBAKBQCAQ9IA/2NVKxqkEAoFAIBAIBAKBQCAQ9OACu4rQJ2VY1LMAAAAASUVORK5CYII\u003d"
  },
  "description": "Template for the \u003ca href\u003d\"https://learn.microsoft.com/en-us/xandr/monetize/the-universal-pixel\"\u003eMicrosoft/Xandr Monetize Universal Pixel\u003c/a\u003e (also known as pixie.js)",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pixel_id",
    "displayName": "Pixel ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}"
        ]
      }
    ],
    "valueHint": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "alwaysInSummary": true,
    "notSetText": "🚫 NOT SET 🚫",
    "help": "Your Universal Pixel ID from Microsoft Monetize, in the format xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx."
  },
  {
    "type": "SELECT",
    "name": "event_name",
    "displayName": "Event Name",
    "simpleValueType": true,
    "macrosInSelect": true,
    "alwaysInSummary": true,
    "defaultValue": "PageView",
    "help": "The event to send. The pixel does not track page views on its own, so fire a \u003cstrong\u003ePageView\u003c/strong\u003e tag on every page. Choose \u003cstrong\u003eCustom event\u003c/strong\u003e to send an event with your own name, or \u003cstrong\u003eInitialize pixel\u003c/strong\u003e to only set up the pixel on the page without sending an event.",
    "selectItems": [
      {
        "value": "init",
        "displayValue": "Initialize pixel"
      },
      {
        "value": "PageView",
        "displayValue": "PageView"
      },
      {
        "value": "LandingPage",
        "displayValue": "LandingPage"
      },
      {
        "value": "ItemView",
        "displayValue": "ItemView"
      },
      {
        "value": "AddToCart",
        "displayValue": "AddToCart"
      },
      {
        "value": "InitiateCheckout",
        "displayValue": "InitiateCheckout"
      },
      {
        "value": "AddPaymentInfo",
        "displayValue": "AddPaymentInfo"
      },
      {
        "value": "Purchase",
        "displayValue": "Purchase"
      },
      {
        "value": "Lead",
        "displayValue": "Lead"
      },
      {
        "value": "custom",
        "displayValue": "Custom event"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "custom_event_name",
    "displayName": "Custom Event Name",
    "simpleValueType": true,
    "valueHint": "CustomEvent",
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "event_name",
        "paramValue": "custom",
        "type": "EQUALS"
      }
    ],
    "help": "The name of your custom event, for example \u003cstrong\u003eNewsletter\u003c/strong\u003e. Add its data in the Custom Parameters table below."
  },
  {
    "type": "CHECKBOX",
    "name": "load_script",
    "checkboxText": "Load the pixie.js script",
    "simpleValueType": true,
    "defaultValue": true,
    "alwaysInSummary": true,
    "help": "Loads the Universal Pixel script if it is not on the page yet. Untick this only when the site already includes the Universal Pixel script itself, because loading it twice makes the pixel forget that it was initialised. When unticked, this tag hands its calls to the script the site loads."
  },
  {
    "type": "CHECKBOX",
    "name": "initialize_pixel",
    "checkboxText": "Initialize pixel",
    "simpleValueType": true,
    "defaultValue": true,
    "alwaysInSummary": true,
    "enablingConditions": [
      {
        "paramName": "event_name",
        "paramValue": "init",
        "type": "NOT_EQUALS"
      }
    ],
    "help": "Initialises the pixel with this Pixel ID before the event is sent, unless another tag from this template has already done so on the page. Untick it when a separate \u003cstrong\u003eInitialize pixel\u003c/strong\u003e tag or the site itself initialises the pixel."
  },
  {
    "type": "CHECKBOX",
    "name": "track_landing_page",
    "checkboxText": "Track landing page",
    "simpleValueType": true,
    "defaultValue": false,
    "enablingConditions": [
      {
        "paramName": "event_name",
        "paramValue": "PageView",
        "type": "EQUALS"
      },
      {
        "paramName": "event_name",
        "paramValue": "custom",
        "type": "EQUALS"
      },
      {
        "paramName": "event_name",
        "paramValue": "",
        "type": "IS_MACRO_REFERENCE"
      }
    ],
    "help": "Automatically sends the \u003cstrong\u003eLandingPage\u003c/strong\u003e event on the first page view of the browsing session. This is done by setting and reading the cookie \u003cem\u003e_msMonetizeLPSent\u003c/em\u003e"
  },
  {
    "type": "CHECKBOX",
    "name": "page_override",
    "checkboxText": "Override page location",
    "simpleValueType": true,
    "defaultValue": false,
    "enablingConditions": [
      {
        "paramName": "event_name",
        "paramValue": "init",
        "type": "NOT_EQUALS"
      }
    ],
    "help": "Reports a different page URL and referrer with this event instead of the browser\u0027s, for example to remove query parameters or to send a virtual page path. Microsoft documents this for \u003cstrong\u003ePageView\u003c/strong\u003e, but the pixel accepts it on any event. A field left empty is not sent.",
    "subParams": [
      {
        "type": "TEXT",
        "name": "page_url",
        "displayName": "URL",
        "simpleValueType": true,
        "valueHint": "{{Page URL}}",
        "help": "The page URL to report for this event instead of the browser\u0027s address.",
        "enablingConditions": [
          {
            "paramName": "page_override",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "page_referrer",
        "displayName": "Referrer",
        "simpleValueType": true,
        "valueHint": "{{Referrer}}",
        "help": "The referrer to report for this event instead of the browser\u0027s referrer.",
        "enablingConditions": [
          {
            "paramName": "page_override",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "event_parameters",
    "displayName": "Event Parameters",
    "groupStyle": "ZIPPY_OPEN",
    "enablingConditions": [
      {
        "paramName": "event_name",
        "paramValue": "init",
        "type": "NOT_EQUALS"
      }
    ],
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "standard_parameters",
        "displayName": "Standard Parameters",
        "newRowButtonText": "Add standard parameter",
        "help": "Parameters the Universal Pixel supports on any event. \u003cstrong\u003evalue\u003c/strong\u003e must be a number and \u003cstrong\u003ecurrency\u003c/strong\u003e a currency code such as SEK. \u003cstrong\u003eitem_id\u003c/strong\u003e, \u003cstrong\u003eitem_name\u003c/strong\u003e and \u003cstrong\u003eitem_type\u003c/strong\u003e take a single value, a comma-separated list, or a variable that returns a list. Keep each value under 100 characters.\u003cbr\u003e\u003cbr\u003eRows with an empty or invalid value are not sent. Values set here always win over the ecommerce object and the Custom Parameters table.",
        "simpleTableColumns": [
          {
            "type": "SELECT",
            "name": "name",
            "displayName": "Parameter",
            "defaultValue": "",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "selectItems": [
              {
                "value": "item_id",
                "displayValue": "item_id"
              },
              {
                "value": "item_name",
                "displayValue": "item_name"
              },
              {
                "value": "item_type",
                "displayValue": "item_type"
              },
              {
                "value": "value",
                "displayValue": "value"
              },
              {
                "value": "currency",
                "displayValue": "currency"
              }
            ]
          },
          {
            "type": "TEXT",
            "name": "value",
            "displayName": "Value",
            "defaultValue": "",
            "simpleValueType": true
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "ecommerce_integration",
        "checkboxText": "Data layer integration (ecommerce)",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Fills the standard parameters from the \u003ca href\u003d\"https://developers.google.com/analytics/devguides/collection/ga4/ecommerce?client_type\u003dgtm\" target\u003d\"_blank\"\u003eGA4 ecommerce object\u003c/a\u003e on the data layer: \u003cstrong\u003evalue\u003c/strong\u003e and \u003cstrong\u003ecurrency\u003c/strong\u003e from the ecommerce object, and \u003cstrong\u003eitem_id\u003c/strong\u003e, \u003cstrong\u003eitem_name\u003c/strong\u003e and \u003cstrong\u003eitem_type\u003c/strong\u003e (from item_category) from its items.\u003cbr\u003e\u003cbr\u003eOnly parameters you have not set in the Standard Parameters table are filled in. Nothing is calculated or defaulted: a value missing from both is not sent.\u003cbr\u003e\u003cbr\u003e\u003cstrong\u003eNote:\u003c/strong\u003e the data layer keeps the last ecommerce object until the site clears it, so only enable this on tags that fire on ecommerce events."
      },
      {
        "type": "CHECKBOX",
        "name": "enable_custom_parameters",
        "checkboxText": "Send custom parameters",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Adds a table for parameters with your own names, typically used with custom events. Values can be text, numbers, true/false, or a variable that returns a list or an object.",
        "subParams": [
          {
            "type": "SIMPLE_TABLE",
            "name": "custom_parameters",
            "displayName": "Custom Parameters",
            "newRowButtonText": "Add custom parameter",
            "help": "Rows with an empty value are not sent. A parameter that is already set by the Standard Parameters table, the ecommerce object or the page URL override keeps that value.",
            "enablingConditions": [
              {
                "paramName": "enable_custom_parameters",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "simpleTableColumns": [
              {
                "type": "TEXT",
                "name": "name",
                "displayName": "Parameter",
                "defaultValue": "",
                "isUnique": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              },
              {
                "type": "TEXT",
                "name": "value",
                "displayName": "Value",
                "defaultValue": "",
                "simpleValueType": true
              }
            ]
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "consent",
    "displayName": "Consent",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "send_consent",
        "checkboxText": "Consent Mode",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Tells the pixel whether it may read and write third-party cookies (its \u003cstrong\u003ead_storage\u003c/strong\u003e consent). When consent is denied the pixel still sends events, but without cookies. This does not control whether the tag fires at all; use GTM\u0027s consent settings for that.",
        "subParams": [
          {
            "type": "SELECT",
            "name": "consent_default_ad_storage",
            "displayName": "Default command: ad_storage",
            "simpleValueType": true,
            "macrosInSelect": true,
            "help": "The consent state the pixel starts with, sent before it is initialised. The pixel ignores it once it has received an update. \u003cstrong\u003eUse GTM consent state\u003c/strong\u003e takes the current state of GTM\u0027s ad_storage consent type. A variable may return \u003cstrong\u003egranted\u003c/strong\u003e, \u003cstrong\u003edenied\u003c/strong\u003e, true or false.",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              },
              {
                "value": "gtm",
                "displayValue": "Use GTM consent state"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "send_consent",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "notSetText": "Don\u0027t send"
          },
          {
            "type": "TEXT",
            "name": "consent_wait_for_update",
            "displayName": "Default command: wait_for_update (ms)",
            "simpleValueType": true,
            "valueHint": "1000",
            "help": "Optional. How many milliseconds the pixel waits for a consent update before it initialises and starts tracking. Use a whole number greater than 0; the pixel waits at most 10000 ms. Leave empty to not wait.",
            "enablingConditions": [
              {
                "paramName": "consent_default_ad_storage",
                "paramValue": "",
                "type": "PRESENT"
              }
            ]
          },
          {
            "type": "SELECT",
            "name": "consent_update_ad_storage",
            "displayName": "Update command: ad_storage",
            "simpleValueType": true,
            "macrosInSelect": true,
            "defaultValue": "gtm",
            "help": "The consent state sent every time this tag fires. \u003cstrong\u003eUse GTM consent state\u003c/strong\u003e takes the current state of GTM\u0027s ad_storage consent type and also passes later consent changes on to the pixel automatically. A variable may return \u003cstrong\u003egranted\u003c/strong\u003e, \u003cstrong\u003edenied\u003c/strong\u003e, true or false.",
            "selectItems": [
              {
                "value": "none",
                "displayValue": "Don\u0027t send"
              },
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              },
              {
                "value": "gtm",
                "displayValue": "Use GTM consent state"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "send_consent",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "tcf_support",
        "checkboxText": "TCF v2.0 Support",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Lets the pixel read the IAB TCF v2.0 consent string from your consent management platform and adjust its tracking to it. The pixel waits up to 500 ms for the consent platform to answer, then continues without TCF support. \u003ca href\u003d\"https://learn.microsoft.com/en-us/xandr/monetize/tcf-for-universal-pixel-monetize\" target\u003d\"_blank\"\u003eLearn more\u003c/a\u003e about TCF for Universal Pixel."
      },
      {
        "type": "CHECKBOX",
        "name": "privacy_sandbox",
        "checkboxText": "Enable Privacy Sandbox",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Lets the pixel use Privacy Sandbox features in browsers that support them. Unticked, the pixel behaves as it does with Microsoft\u0027s standard installation code. Only takes effect on the tag that initialises the pixel on the page."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "additional_settings",
    "displayName": "Additional Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SELECT",
        "name": "logging",
        "displayName": "Logging",
        "simpleValueType": true,
        "macrosInSelect": true,
        "defaultValue": "false",
        "help": "Writes what this tag sends to the pixel to the browser console, and turns on the pixel\u0027s own logging (messages starting with \u003cstrong\u003e(pixie)\u003c/strong\u003e). Use a variable, for example one that is true only in Preview mode, to turn it on dynamically.\u003cbr\u003e\u003cbr\u003eThe pixel\u0027s own logging can only be turned on by the first pixel tag on the page, before the script has loaded.",
        "selectItems": [
          {
            "value": "false",
            "displayValue": "Disabled"
          },
          {
            "value": "true",
            "displayValue": "Enabled"
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Required permissions (Permissions tab):
//   access_globals           read+write+execute on "pixie"
//                            read+write on "pixie.actionQueue"
//                            execute on "pixie.actionQueue.push"
//                            read+write on "pixie.config"
//   inject_script            https://acdn.adnxs.com/dmp/up/pixie.js
//   read_data_layer          ecommerce
//   access_consent           read on ad_storage
//   access_template_storage
//   logging

const addConsentListener = require('addConsentListener');
const callInWindow = require('callInWindow');
const copyFromDataLayer = require('copyFromDataLayer');
const copyFromWindow = require('copyFromWindow');
const createQueue = require('createQueue');
const getType = require('getType');
const injectScript = require('injectScript');
const isConsentGranted = require('isConsentGranted');
const logToConsole = require('logToConsole');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const setInWindow = require('setInWindow');
const templateStorage = require('templateStorage');
const setCookie = require('setCookie');
const getCookieValues = require('getCookieValues');


const SCRIPT_URL = 'https://acdn.adnxs.com/dmp/up/pixie.js';
const LOG_PREFIX = 'Pixie Client:';

// Value of the Event Name dropdown that reveals the free-text event field.
const CUSTOM_EVENT = 'custom';

// Value of the Event Name dropdown for tags that only initialise the pixel. The
// pixel has no event by this name, so it must never reach pixie('event').
const INIT_ONLY_EVENT = 'init';

// Values of the consent dropdowns that are not literal ad_storage states.
const CONSENT_GTM = 'gtm';

// Standard parameters the pixel documents. Keep in sync with the Parameter
// dropdown of the Standard Parameters table in fields.json.
const STANDARD_PARAMS = ['item_id', 'item_name', 'item_type', 'value', 'currency'];

// Standard parameters documented as accepting a list.
const LIST_PARAMS = ['item_id', 'item_name', 'item_type'];

// Standard parameters documented as a number.
const NUMBER_PARAMS = ['value'];

// templateStorage keys.
const STORAGE_INITIALISED = 'initialisedPixelIds';
const STORAGE_CONSENT_LISTENER = 'consentListenerRegistered';


/***************  HELPERS ***************/

function isSet(value) {
  const type = getType(value);
  return type !== 'undefined' && type !== 'null' && value !== '';
}

// Trimmed string for scalars; undefined for anything empty or non-scalar.
function cleanScalar(value) {
  const type = getType(value);
  if (type === 'string') {
    const trimmed = value.trim();
    return trimmed === '' ? undefined : trimmed;
  }
  if (type === 'number' || type === 'boolean') return value;
  return undefined;
}

// makeNumber yields NaN for non-numeric input, and NaN is the only value that
// is not equal to itself. Returns undefined so the parameter is left out.
function cleanNumber(value) {
  const scalar = cleanScalar(value);
  if (scalar === undefined) return undefined;
  const number = makeNumber(scalar);
  return number === number ? number : undefined;
}

// Arrays are passed through with empty entries removed (the SDK sends one query
// parameter per entry). Strings are sent as given, so a comma-delimited list
// typed into the table reaches the endpoint unchanged, as the docs describe.
function cleanList(value) {
  if (getType(value) !== 'array') return cleanScalar(value);

  const items = [];
  value.forEach((item) => {
    const clean = cleanScalar(item);
    if (clean !== undefined) items.push(clean);
  });
  return items.length ? items : undefined;
}

// Coerces a Standard Parameters value to the type the pixel documents.
function cleanStandardValue(key, value) {
  if (NUMBER_PARAMS.indexOf(key) !== -1) {
    const number = cleanNumber(value);
    if (number === undefined && isSet(value)) {
      log('"' + key + '" is not a number ("' + makeString(value) + '") and was dropped.');
    }
    return number;
  }
  if (LIST_PARAMS.indexOf(key) !== -1) return cleanList(value);
  return cleanScalar(value);
}

// Custom parameters may be any serialisable type. Only unset values, blank
// strings and functions are dropped.
function cleanCustomValue(value) {
  const type = getType(value);
  if (type === 'function') return undefined;
  if (type === 'string') return cleanScalar(value);
  if (!isSet(value)) return undefined;
  return value;
}

// Iterates a SIMPLE_TABLE with "name" and "value" columns, skipping rows
// without a usable name.
function eachRow(table, callback) {
  if (getType(table) !== 'array') return;
  table.forEach((row) => {
    if (getType(row) !== 'object') return;
    const name = cleanScalar(row.name);
    if (name !== undefined) callback(makeString(name), row.value);
  });
}

// The Logging dropdown yields the strings "true"/"false", but a variable may
// return a real boolean or a number.
function isTruthyFlag(value) {
  if (value === true || value === 1) return true;
  if (getType(value) !== 'string') return false;
  const flag = value.trim().toLowerCase();
  return flag === 'true' || flag === '1';
}

const loggingEnabled = isTruthyFlag(data.logging);

function log(message, detail) {
  if (!loggingEnabled) return;
  if (detail === undefined) logToConsole(LOG_PREFIX, message);
  else logToConsole(LOG_PREFIX, message, detail);
}


/***************  PIXIE CALLS ***************/

// Whether pixie.js has already run on this page. The SDK replaces the stub with
// a plain function that has no actionQueue, see the header comment.
function isSdkLoaded() {
  return getType(copyFromWindow('pixie')) === 'function' &&
    getType(copyFromWindow('pixie.actionQueue')) !== 'array';
}

// Mirrors the vendor stub: window.pixie buffers every call on
// window.pixie.actionQueue until pixie.js takes over. The sandbox has no
// `arguments` object, so the stub declares the three positional arguments.
function defineStub() {
  if (getType(copyFromWindow('pixie')) === 'function') return;

  setInWindow('pixie', function (action, actionValue, params) {
    callInWindow('pixie.actionQueue.push', {
      action: action,
      actionValue: actionValue,
      params: params
    });
  });
  createQueue('pixie.actionQueue');
}

// Calls window.pixie, which is either the stub above (queued) or the loaded SDK
// (processed at once). The params argument is only passed when there is one.
function pixie(action, actionValue, params) {
  log(action + ' ' + makeString(actionValue), params);
  if (params === undefined) return callInWindow('pixie', action, actionValue);
  return callInWindow('pixie', action, actionValue, params);
}


/***************  CONSENT ***************/

// Accepts "granted"/"denied" (any case) or a boolean, so the value can come
// from a variable. Anything else is rejected.
function normaliseConsentValue(value) {
  if (value === true) return 'granted';
  if (value === false) return 'denied';
  if (getType(value) !== 'string') return undefined;
  const flag = value.trim().toLowerCase();
  if (flag === 'granted' || flag === 'denied') return flag;
  return undefined;
}

function sendConsent(command, adStorage, waitForUpdate) {
  const params = { ad_storage: adStorage };
  if (waitForUpdate !== undefined) params.wait_for_update = waitForUpdate;
  pixie('consent', command, params);
}

// wait_for_update only applies to the default command. The SDK parses it with
// parseInt and ignores anything that is not > 0, so the same rule applies here
// (with a log line instead of a silent drop). The SDK caps it at 10000 ms.
function resolveWaitForUpdate(value) {
  if (!isSet(value)) return undefined;
  const number = cleanNumber(value);
  if (number === undefined || number <= 0 || number % 1 !== 0) {
    log('wait_for_update "' + makeString(value) +
      '" is not a whole number greater than 0 and was left out of the default command.');
    return undefined;
  }
  return number;
}

function isGtmConsent(value) {
  return getType(value) === 'string' && value.trim().toLowerCase() === CONSENT_GTM;
}

// Turns a consent dropdown value into the ad_storage state to send, or
// undefined when nothing should be sent for that command.
function resolveConsentValue(command, value) {
  if (!isSet(value)) return undefined;
  if (isGtmConsent(value)) return isConsentGranted('ad_storage') ? 'granted' : 'denied';

  const adStorage = normaliseConsentValue(value);
  if (adStorage === undefined) {
    log('consent ' + command + ' value "' + makeString(value) +
      '" is not "granted" or "denied", the ' + command + ' command was not sent.');
  }
  return adStorage;
}

// Keeps the pixel in sync with later GTM consent changes. One listener per
// page, shared by every instance of this template.
function listenForGtmConsent() {
  if (templateStorage.getItem(STORAGE_CONSENT_LISTENER)) return;
  templateStorage.setItem(STORAGE_CONSENT_LISTENER, true);

  addConsentListener('ad_storage', (consentType, granted) => {
    sendConsent('update', granted ? 'granted' : 'denied');
  });
}

function applyConsent() {
  // TCF support is a config action the SDK processes at once, ahead of init.
  if (data.tcf_support) pixie('config', 'tcf', { enabled: true });

  if (!data.send_consent) return;

  const defaultState = resolveConsentValue('default', data.consent_default_ad_storage);
  if (defaultState !== undefined) {
    sendConsent('default', defaultState, resolveWaitForUpdate(data.consent_wait_for_update));
  }

  const updateState = resolveConsentValue('update', data.consent_update_ad_storage);
  if (updateState !== undefined) sendConsent('update', updateState);

  // Only the update command can meaningfully follow later consent changes: the
  // SDK ignores a default once any update has been received.
  if (isGtmConsent(data.consent_update_ad_storage)) listenForGtmConsent();
}


/***************  EVENT PARAMETERS ***************/

// Maps the GA4 ecommerce object to the pixel's standard parameters. Nothing is
// summed or defaulted: a value that is missing from the data layer is not sent.
function getEcommerceParams() {
  const ecommerce = copyFromDataLayer('ecommerce');
  if (getType(ecommerce) !== 'object') {
    log('ecommerce integration is enabled but the data layer has no ecommerce object.');
    return {};
  }

  const params = {};
  const value = cleanNumber(ecommerce.value);
  if (value !== undefined) params.value = value;

  const currency = cleanScalar(ecommerce.currency);
  if (currency !== undefined) params.currency = currency;

  const items = getType(ecommerce.items) === 'array' ? ecommerce.items : [];
  const ids = [], names = [], types = [];
  items.forEach((item) => {
    if (getType(item) !== 'object') return;
    const id = cleanScalar(item.item_id);
    const name = cleanScalar(item.item_name);
    const type = cleanScalar(item.item_category);
    if (id !== undefined) ids.push(id);
    if (name !== undefined) names.push(name);
    if (type !== undefined) types.push(type);
  });
  if (ids.length) params.item_id = ids;
  if (names.length) params.item_name = names;
  // item_type is the pixel's "category of the page or product".
  if (types.length) params.item_type = types;

  return params;
}

function buildEventParams() {
  const params = {};

  // 1. Standard Parameters table. Rows naming anything outside the allowlist
  //    are skipped so nothing unexpected reaches the pixel under a known name.
  eachRow(data.standard_parameters, (key, value) => {
    if (STANDARD_PARAMS.indexOf(key) === -1) return;
    const clean = cleanStandardValue(key, value);
    if (clean !== undefined) params[key] = clean;
  });

  // 2. GA4 ecommerce object, only filling in what the table left unset.
  if (data.ecommerce_integration) {
    const ecommerce = getEcommerceParams();
    STANDARD_PARAMS.forEach((key) => {
      if (params[key] === undefined && ecommerce[key] !== undefined) params[key] = ecommerce[key];
    });
  }

  // 3. Page URL override. The SDK reports "url" as the page URL (href) and
  //    "referrer" as the referrer of this event. Empty fields are left out.
  if (data.page_override) {
    const url = cleanScalar(data.page_url);
    const referrer = cleanScalar(data.page_referrer);
    if (url !== undefined) params.url = makeString(url);
    if (referrer !== undefined) params.referrer = makeString(referrer);
  }

  // 4. Custom Parameters table. Keys already set above are left alone.
  if (data.enable_custom_parameters) {
    eachRow(data.custom_parameters, (key, value) => {
      if (params[key] !== undefined) {
        return log('custom parameter "' + key + '" is already set by the Standard Parameters table, the ecommerce object or the page URL override and was ignored.');
      }
      const clean = cleanCustomValue(value);
      if (clean !== undefined) params[key] = clean;
    });
  }

  return params;
}

// Returns the event to send, INIT_ONLY_EVENT for init-only tags, or undefined
// when no usable name is configured.
function resolveEventName() {
  const selected = cleanScalar(data.event_name);
  if (selected === undefined) return undefined;
  if (selected === CUSTOM_EVENT) return cleanScalar(data.custom_event_name);
  return makeString(selected);
}


/***************  MAIN ***************/

const pixelId = cleanScalar(data.pixel_id);
if (pixelId === undefined) {
  logToConsole(LOG_PREFIX, 'no Pixel ID configured, tag not fired.');
  return data.gtmOnFailure();
}
const pixelIdString = makeString(pixelId);

const eventName = resolveEventName();
if (eventName === undefined) {
  logToConsole(LOG_PREFIX, 'no event name configured, tag not fired.');
  return data.gtmOnFailure();
}
const initOnly = eventName === INIT_ONLY_EVENT;

const sdkLoaded = isSdkLoaded();
defineStub();

// Vendor logging is read from window.pixie.config when pixie.js boots, so it
// can only be switched on while the stub is still in place.
if (loggingEnabled) {
  if (sdkLoaded) log('pixie.js is already loaded, vendor logging cannot be enabled any more.');
  else setInWindow('pixie.config', { logging: true }, true);
}

// Order matters to the SDK: config and consent, then init, then event.
applyConsent();

// An "Initialize pixel" tag always initialises; event tags do so unless the
// "Initialize pixel" checkbox was unticked (GTM only ever sends false for that).
// Either way each Pixel ID is initialised once per page.
const shouldInit = initOnly || data.initialize_pixel !== false;
const initialised = templateStorage.getItem(STORAGE_INITIALISED) || [];
if (shouldInit && initialised.indexOf(pixelIdString) === -1) {
  // psEnabled (Privacy Sandbox) is the only init option the SDK knows. Unticked
  // it is left out entirely, which is the pixel's default per the vendor docs.
  if (data.privacy_sandbox) pixie('init', pixelIdString, { psEnabled: true });
  else pixie('init', pixelIdString);

  templateStorage.setItem(STORAGE_INITIALISED, initialised.concat([pixelIdString]));
}

if (!initOnly) pixie('event', makeString(eventName), buildEventParams());

if (eventName === 'PageView' && data.track_landing_page) {
  const cookieName = '_msMonetizeLPSent';
  const isLandingPage = !getCookieValues(cookieName)[0];
  if (isLandingPage) {
    setCookie(cookieName, 'true', { domain: 'auto', path: '/', SameSite: 'strict' });
    pixie('event', 'LandingPage', buildEventParams());
  }
}

// Nothing left to load when the SDK is already on the page, or when the site
// loads pixie.js itself (the checkbox is only ever false when unticked).
// Otherwise injectScript caches by URL, so several tags share a single script
// element and each gets its callbacks once the script has loaded.
if (sdkLoaded || data.load_script === false) return data.gtmOnSuccess();
injectScript(SCRIPT_URL, data.gtmOnSuccess, data.gtmOnFailure, SCRIPT_URL);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pixie"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pixie.actionQueue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pixie.actionQueue.push"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pixie.config"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://acdn.adnxs.com/dmp/up/pixie.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_template_storage",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "_msMonetizeLPSent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_msMonetizeLPSent"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "/"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Declares the pixie stub and its queue when the page has no pixie
  code: |
    let windowValues = {}, queuePath;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) { windowValues[key] = value; });
    mock('createQueue', function(path) { queuePath = path; return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000001', event_name: 'PageView' });

    assertThat(windowValues['pixie']).isDefined();
    assertThat(windowValues['pixie.config']).isUndefined();
    assertThat(queuePath).isEqualTo('pixie.actionQueue');
- name: Stub buffers calls as action actionValue and params objects on the queue
  code: |
    let stub, pushed = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) { if (key === 'pixie') stub = value; });
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { if (path === 'pixie.actionQueue.push') pushed.push(a); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000002', event_name: 'PageView' });
    stub('init', 'dddddddd-dddd-4ddd-8ddd-000000000002');
    stub('event', 'Purchase', { value: 10 });

    assertThat(pushed.length).isEqualTo(2);
    assertThat(pushed[0].action).isEqualTo('init');
    assertThat(pushed[0].actionValue).isEqualTo('dddddddd-dddd-4ddd-8ddd-000000000002');
    assertThat(pushed[0].params).isUndefined();
    assertThat(pushed[1]).isEqualTo({ action: 'event', actionValue: 'Purchase', params: { value: 10 } });
- name: Reuses an existing stub instead of redefining it
  code: |
    let keysWritten = [], queueCreated = false, injected = false;
    mock('copyFromWindow', function(key) {
      // A stub is a function that still carries its actionQueue array.
      if (key === 'pixie') return function(action, actionValue, params) {};
      if (key === 'pixie.actionQueue') return [];
    });
    mock('setInWindow', function(key, value, overrideExisting) { keysWritten.push(key); });
    mock('createQueue', function(path) { queueCreated = true; return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) { injected = true; });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000003', event_name: 'PageView' });

    assertThat(keysWritten).isEqualTo([]);
    assertThat(queueCreated).isFalse();
    // The SDK has not run yet, so the script is still injected (cached by URL).
    assertThat(injected).isTrue();
- name: Skips script injection when the Pixie script is already loaded
  code: |
    let calls = [], injected = false, keysWritten = [];
    mock('copyFromWindow', function(key) {
      // The loaded SDK replaces window.pixie with a function without actionQueue.
      if (key === 'pixie') return function(action, actionValue, params) {};
    });
    mock('setInWindow', function(key, value, overrideExisting) { keysWritten.push(key); });
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) { injected = true; });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000004', event_name: 'PageView' });

    assertThat(injected).isFalse();
    assertThat(keysWritten).isEqualTo([]);
    assertThat(calls).isEqualTo([
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000004'],
      ['pixie', 'event', 'PageView', {}]
    ]);
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Injects the Pixie script and caches it by URL
  code: |
    let injectedUrl, cacheToken;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) {
      injectedUrl = url;
      cacheToken = token;
    });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000005', event_name: 'PageView' });

    assertThat(injectedUrl).isEqualTo('https://acdn.adnxs.com/dmp/up/pixie.js');
    assertThat(cacheToken).isEqualTo('https://acdn.adnxs.com/dmp/up/pixie.js');
- name: Only queues calls when loading the script is switched off
  code: |
    let calls = [], injected = false, stubDefined = false;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) { if (key === 'pixie') stubDefined = true; });
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) { injected = true; });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000006', event_name: 'PageView', load_script: false });

    // The stub is still needed so the calls wait for the site's own pixie.js.
    assertThat(stubDefined).isTrue();
    assertThat(injected).isFalse();
    assertThat(calls).isEqualTo([
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000006'],
      ['pixie', 'event', 'PageView', {}]
    ]);
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Passes psEnabled to init only when Privacy Sandbox is ticked
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { if (a === 'init') calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    // A different Pixel ID per run, so every run reaches the init call.
    runCode({ pixel_id: '00000000-0000-0000-0000-000000000001', event_name: 'PageView', privacy_sandbox: true });
    runCode({ pixel_id: '00000000-0000-0000-0000-000000000002', event_name: 'PageView', privacy_sandbox: false });
    runCode({ pixel_id: '00000000-0000-0000-0000-000000000003', event_name: 'init', privacy_sandbox: true });

    assertThat(calls).isEqualTo([
      ['pixie', 'init', '00000000-0000-0000-0000-000000000001', { psEnabled: true }],
      ['pixie', 'init', '00000000-0000-0000-0000-000000000002'],
      ['pixie', 'init', '00000000-0000-0000-0000-000000000003', { psEnabled: true }]
    ]);
- name: Only initialises the pixel for an Initialize pixel tag
  code: |
    let calls = [], injectedUrl;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) { injectedUrl = url; });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000008',
      event_name: 'init',
      // The checkbox is hidden for this option; its stored value must not matter.
      initialize_pixel: false,
      standard_parameters: [{ name: 'value', value: '5' }]
    });

    assertThat(calls).isEqualTo([['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000008']]);
    assertThat(injectedUrl).isEqualTo('https://acdn.adnxs.com/dmp/up/pixie.js');
- name: Skips init for event tags with Initialize pixel unticked
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000009', event_name: 'Lead', initialize_pixel: false });
    // A later tag with the checkbox ticked still initialises the pixel.
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000009', event_name: 'Purchase', initialize_pixel: true });

    assertThat(calls).isEqualTo([
      ['pixie', 'event', 'Lead', {}],
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000009'],
      ['pixie', 'event', 'Purchase', {}]
    ]);
- name: Sends init followed by the event with a trimmed Pixel ID
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: '  dddddddd-dddd-4ddd-8ddd-000000000010  ',
      event_name: 'AddToCart',
      gtmEventId: 12,
      gtmTagId: 'tag-1'
    });

    assertThat(calls).isEqualTo([
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000010'],
      ['pixie', 'event', 'AddToCart', {}]
    ]);
- name: Initialises each Pixel ID only once per page
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    // Two tags for the same pixel, then one for a second pixel, all on one page.
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000011', event_name: 'PageView' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000011', event_name: 'Lead' });
    runCode({ pixel_id: 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee', event_name: 'PageView' });

    assertThat(calls).isEqualTo([
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000011'],
      ['pixie', 'event', 'PageView', {}],
      ['pixie', 'event', 'Lead', {}],
      ['pixie', 'init', 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee'],
      ['pixie', 'event', 'PageView', {}]
    ]);
- name: Sends the custom event name when Custom event is selected
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000012',
      event_name: 'custom',
      custom_event_name: '  Newsletter  '
    });

    assertThat(calls[1]).isEqualTo(['pixie', 'event', 'Newsletter', {}]);
- name: Fails when Custom event is selected without a name
  code: |
    let called = false, injected = false;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { called = true; });
    mock('injectScript', function(url, onSuccess, onFailure, token) { injected = true; });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000013',
      event_name: 'custom',
      custom_event_name: '   '
    });

    assertThat(called).isFalse();
    assertThat(injected).isFalse();
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
- name: Sends only allowed standard parameters and coerces value to a number
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000014',
      event_name: 'Purchase',
      standard_parameters: [
        { name: 'value', value: '333.33' },
        { name: 'currency', value: '  SEK  ' },
        { name: 'item_id', value: 'sku-1' },
        { name: 'item_name', value: '' },
        { name: 'item_type', value: undefined },
        { name: 'order_id', value: 'not a standard parameter' },
        { name: '', value: 'orphan row' }
      ]
    });

    assertThat(calls[1]).isEqualTo([
      'pixie',
      'event',
      'Purchase',
      { value: 333.33, currency: 'SEK', item_id: 'sku-1' }
    ]);
- name: Drops a non-numeric value and non-scalar standard parameters
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000015',
      event_name: 'Purchase',
      standard_parameters: [
        { name: 'value', value: 'not-a-number' },
        { name: 'currency', value: { code: 'SEK' } },
        { name: 'item_id', value: '   ' }
      ]
    });

    assertThat(calls[1]).isEqualTo(['pixie', 'event', 'Purchase', {}]);
- name: Passes list parameters through as arrays or as the given string
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000016',
      event_name: 'ItemView',
      standard_parameters: [
        { name: 'item_id', value: ['sku-1', '', ' sku-2 ', null] },
        { name: 'item_name', value: 'Chair, Table' },
        { name: 'item_type', value: [] }
      ]
    });

    assertThat(calls[1]).isEqualTo([
      'pixie',
      'event',
      'ItemView',
      { item_id: ['sku-1', 'sku-2'], item_name: 'Chair, Table' }
    ]);
- name: Fills unset standard parameters from the GA4 ecommerce object
  code: |
    let calls = [], dataLayerKeys = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {
      dataLayerKeys.push(key);
      if (key === 'ecommerce') {
        return {
          transaction_id: 'T-1',
          value: '250.5',
          currency: 'SEK',
          items: [
            { item_id: 'sku-1', item_name: 'Chair', item_category: 'Furniture', price: 100 },
            { item_id: 'sku-2', item_name: '', item_category: 'Lighting' },
            'not an item'
          ]
        };
      }
    });
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000017',
      event_name: 'Purchase',
      ecommerce_integration: true,
      // The table always wins over the ecommerce object.
      standard_parameters: [{ name: 'currency', value: 'EUR' }]
    });

    assertThat(dataLayerKeys).isEqualTo(['ecommerce']);
    assertThat(calls[1]).isEqualTo([
      'pixie',
      'event',
      'Purchase',
      {
        currency: 'EUR',
        value: 250.5,
        item_id: ['sku-1', 'sku-2'],
        item_name: ['Chair'],
        item_type: ['Furniture', 'Lighting']
      }
    ]);
- name: Leaves the data layer alone when ecommerce integration is off
  code: |
    let calls = [], dataLayerRead = false;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) { dataLayerRead = true; return { value: 1, currency: 'SEK' }; });
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000018',
      event_name: 'Purchase',
      ecommerce_integration: false
    });

    assertThat(dataLayerRead).isFalse();
    assertThat(calls[1]).isEqualTo(['pixie', 'event', 'Purchase', {}]);
- name: Sends nothing from the ecommerce object when the data layer has none
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000019',
      event_name: 'AddToCart',
      ecommerce_integration: true
    });

    assertThat(calls[1]).isEqualTo(['pixie', 'event', 'AddToCart', {}]);
- name: Sends custom parameters of any type without overriding set keys
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000020',
      event_name: 'custom',
      custom_event_name: 'FormSubmission',
      standard_parameters: [{ name: 'value', value: '5' }],
      enable_custom_parameters: true,
      custom_parameters: [
        { name: ' type ', value: ' subscribe ' },
        { name: 'is_registration', value: true },
        { name: 'option_count', value: 4 },
        { name: 'options', value: { newsletter: true } },
        { name: 'value', value: '999' },
        { name: 'empty', value: '' },
        { name: 'missing', value: undefined },
        { name: 'callback', value: function() {} },
        { name: '', value: 'orphan row' }
      ]
    });

    assertThat(calls[1]).isEqualTo([
      'pixie',
      'event',
      'FormSubmission',
      {
        value: 5,
        type: 'subscribe',
        is_registration: true,
        option_count: 4,
        options: { newsletter: true }
      }
    ]);
- name: Ignores the custom parameters table when the checkbox is off
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000021',
      event_name: 'Lead',
      enable_custom_parameters: false,
      custom_parameters: [{ name: 'type', value: 'subscribe' }]
    });

    assertThat(calls[1]).isEqualTo(['pixie', 'event', 'Lead', {}]);
- name: Sends no config or consent signal by default
  code: |
    let calls = [], consentRead = false, listeners = 0;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { consentRead = true; return false; });
    mock('addConsentListener', function(type, listener) { listeners++; });

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000022',
      event_name: 'PageView',
      tcf_support: false,
      send_consent: false,
      // Hidden while the checkbox is off; stored values must not leak through.
      consent_default_ad_storage: 'denied',
      consent_update_ad_storage: 'gtm'
    });

    assertThat(consentRead).isFalse();
    assertThat(listeners).isEqualTo(0);
    assertThat(calls).isEqualTo([
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000022'],
      ['pixie', 'event', 'PageView', {}]
    ]);
- name: Sends the TCF config before init
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000023', event_name: 'init', tcf_support: true });

    assertThat(calls).isEqualTo([
      ['pixie', 'config', 'tcf', { enabled: true }],
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000023']
    ]);
- name: Sends default and update consent commands before init
  code: |
    let calls = [], consentRead = false;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { consentRead = true; return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000024',
      event_name: 'PageView',
      tcf_support: true,
      send_consent: true,
      consent_default_ad_storage: 'denied',
      consent_update_ad_storage: 'granted'
    });

    assertThat(consentRead).isFalse();
    assertThat(calls).isEqualTo([
      ['pixie', 'config', 'tcf', { enabled: true }],
      ['pixie', 'consent', 'default', { ad_storage: 'denied' }],
      ['pixie', 'consent', 'update', { ad_storage: 'granted' }],
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000024'],
      ['pixie', 'event', 'PageView', {}]
    ]);
- name: Adds a valid wait for update to the default command only
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { if (a === 'consent') calls.push([b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    const withWait = (wait) => ({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000025',
      event_name: 'PageView',
      send_consent: true,
      consent_default_ad_storage: 'denied',
      consent_update_ad_storage: 'granted',
      consent_wait_for_update: wait
    });

    runCode(withWait(' 1000 '));   // string from the text field
    runCode(withWait(500));        // number from a variable
    runCode(withWait(''));         // left empty
    runCode(withWait(undefined));
    runCode(withWait('0'));        // not > 0
    runCode(withWait('-5'));
    runCode(withWait('1.5'));      // not a whole number
    runCode(withWait('soon'));     // not a number

    assertThat(calls.length).isEqualTo(16);
    assertThat(calls[0]).isEqualTo(['default', { ad_storage: 'denied', wait_for_update: 1000 }]);
    assertThat(calls[1]).isEqualTo(['update', { ad_storage: 'granted' }]);
    assertThat(calls[2]).isEqualTo(['default', { ad_storage: 'denied', wait_for_update: 500 }]);
    for (let i = 4; i < 16; i += 2) {
      assertThat(calls[i], 'run ' + (i / 2)).isEqualTo(['default', { ad_storage: 'denied' }]);
    }
- name: Skips a consent command set to Do not send
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { if (a === 'consent') calls.push([b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000026', event_name: 'PageView', send_consent: true, consent_default_ad_storage: 'none', consent_update_ad_storage: 'denied' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000026', event_name: 'PageView', send_consent: true, consent_default_ad_storage: 'granted', consent_update_ad_storage: 'none' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000026', event_name: 'PageView', send_consent: true, consent_default_ad_storage: 'none', consent_update_ad_storage: 'none' });

    assertThat(calls).isEqualTo([
      ['update', { ad_storage: 'denied' }],
      ['default', { ad_storage: 'granted' }]
    ]);
- name: Registers one GTM consent listener per page for the update command
  code: |
    let calls = [], listeners = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return false; });
    mock('addConsentListener', function(type, listener) { listeners.push([type, listener]); });

    // A default set to GTM alone must not register a listener: the SDK ignores
    // defaults after an update, so only the update command can follow changes.
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000027', event_name: 'PageView', send_consent: true, consent_default_ad_storage: 'gtm', consent_update_ad_storage: 'none' });
    assertThat(listeners.length).isEqualTo(0);

    // Two tags on the same page: both send the state, only the first listens.
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000027', event_name: 'PageView', send_consent: true, consent_default_ad_storage: 'none', consent_update_ad_storage: 'gtm' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000027', event_name: 'Lead', send_consent: true, consent_default_ad_storage: 'none', consent_update_ad_storage: 'gtm' });

    assertThat(listeners.length).isEqualTo(1);
    assertThat(listeners[0][0]).isEqualTo('ad_storage');
    assertThat(calls).isEqualTo([
      ['pixie', 'consent', 'default', { ad_storage: 'denied' }],
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000027'],
      ['pixie', 'event', 'PageView', {}],
      ['pixie', 'consent', 'update', { ad_storage: 'denied' }],
      ['pixie', 'event', 'PageView', {}],
      ['pixie', 'consent', 'update', { ad_storage: 'denied' }],
      ['pixie', 'event', 'Lead', {}]
    ]);

    // The listener forwards later changes to the pixel as an update.
    listeners[0][1]('ad_storage', true);
    assertThat(calls[7]).isEqualTo(['pixie', 'consent', 'update', { ad_storage: 'granted' }]);
- name: Reads the GTM consent state for either command
  code: |
    let calls = [], typesRead = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { if (a === 'consent') calls.push([b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { typesRead.push(type); return false; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000028', event_name: 'PageView', send_consent: true, consent_default_ad_storage: 'gtm', consent_update_ad_storage: 'gtm' });

    assertThat(typesRead).isEqualTo(['ad_storage', 'ad_storage']);
    assertThat(calls).isEqualTo([
      ['default', { ad_storage: 'denied' }],
      ['update', { ad_storage: 'denied' }]
    ]);
- name: Accepts consent values from a variable including booleans
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { if (a === 'consent') calls.push([b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000029', event_name: 'PageView', send_consent: true, consent_default_ad_storage: true, consent_update_ad_storage: ' Denied ' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000029', event_name: 'PageView', send_consent: true, consent_default_ad_storage: false, consent_update_ad_storage: 'GRANTED' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000029', event_name: 'PageView', send_consent: true, consent_default_ad_storage: 'none', consent_update_ad_storage: ' GTM ' });

    assertThat(calls).isEqualTo([
      ['default', { ad_storage: 'granted' }],
      ['update', { ad_storage: 'denied' }],
      ['default', { ad_storage: 'denied' }],
      ['update', { ad_storage: 'granted' }],
      ['update', { ad_storage: 'granted' }]
    ]);
- name: Sends no consent command for an unrecognised value
  code: |
    let calls = [];
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { calls.push(c === undefined ? [path, a, b] : [path, a, b, c]); });
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({
      pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000030',
      event_name: 'PageView',
      send_consent: true,
      consent_default_ad_storage: 'yes please',
      consent_update_ad_storage: { granted: true }
    });

    assertThat(calls).isEqualTo([
      ['pixie', 'init', 'dddddddd-dddd-4ddd-8ddd-000000000030'],
      ['pixie', 'event', 'PageView', {}]
    ]);
    assertApi('gtmOnFailure').wasNotCalled();
- name: Enables vendor logging before the Pixie script loads
  code: |
    let windowValues = {}, overrides = {};
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) { windowValues[key] = value; overrides[key] = overrideExisting; });
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000031', event_name: 'PageView', logging: 'true' });

    assertThat(windowValues['pixie.config']).isEqualTo({ logging: true });
    assertThat(overrides['pixie.config']).isTrue();
    assertApi('logToConsole').wasCalled();
- name: Accepts logging flags from a variable and stays quiet when disabled
  code: |
    let configWrites = 0;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) { if (key === 'pixie.config') configWrites++; });
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000032', event_name: 'PageView', logging: 'false' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000032', event_name: 'PageView', logging: undefined });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000032', event_name: 'PageView', logging: 'no' });
    assertThat(configWrites).isEqualTo(0);
    assertApi('logToConsole').wasNotCalled();

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000032', event_name: 'PageView', logging: true });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000032', event_name: 'PageView', logging: ' TRUE ' });
    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000032', event_name: 'PageView', logging: 1 });
    assertThat(configWrites).isEqualTo(3);
- name: Does not touch pixie config once the Pixie script has loaded
  code: |
    let keysWritten = [];
    mock('copyFromWindow', function(key) {
      if (key === 'pixie') return function(action, actionValue, params) {};
    });
    mock('setInWindow', function(key, value, overrideExisting) { keysWritten.push(key); });
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) {});
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000033', event_name: 'PageView', logging: 'true' });

    assertThat(keysWritten).isEqualTo([]);
    assertApi('logToConsole').wasCalled();
- name: Fails without calling pixie or injecting when the Pixel ID is missing
  code: |
    let called = false, injected = false;
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) { called = true; });
    mock('injectScript', function(url, onSuccess, onFailure, token) { injected = true; });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: '   ', event_name: 'PageView' });

    assertThat(called).isFalse();
    assertThat(injected).isFalse();
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
- name: Signals success when the Pixie script loads
  code: |
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) { onSuccess(); });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000035', event_name: 'PageView' });

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();
- name: Signals failure when the Pixie script cannot be loaded
  code: |-
    mock('copyFromWindow', function(key) {});
    mock('setInWindow', function(key, value, overrideExisting) {});
    mock('createQueue', function(path) { return function(value) {}; });
    mock('callInWindow', function(path, a, b, c) {});
    mock('injectScript', function(url, onSuccess, onFailure, token) { onFailure(); });
    mock('copyFromDataLayer', function(key) {});
    mock('isConsentGranted', function(type) { return true; });
    mock('addConsentListener', function(type, listener) {});

    runCode({ pixel_id: 'dddddddd-dddd-4ddd-8ddd-000000000036', event_name: 'PageView' });

    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();


___NOTES___

Created on 05/10/2026, 21:05:39
