/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/hello_react.jsx");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/hello_react.jsx":
/*!**********************************************!*\
  !*** ./app/javascript/packs/hello_react.jsx ***!
  \**********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /home/ec2-user/environment/Nashikau/app/javascript/packs/hello_react.jsx: Support for the experimental syntax 'jsx' isn't currently enabled (10:3):\n\n   8 |\n   9 | const Hello = props => (\n> 10 |   <div>Hello {props.name}!</div>\n     |   ^\n  11 | )\n  12 |\n  13 | Hello.defaultProps = {\n\nAdd @babel/preset-react (https://github.com/babel/babel/tree/main/packages/babel-preset-react) to the 'presets' section of your Babel config to enable transformation.\nIf you want to leave it as-is, add @babel/plugin-syntax-jsx (https://github.com/babel/babel/tree/main/packages/babel-plugin-syntax-jsx) to the 'plugins' section to enable parsing.\n    at instantiate (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:72:32)\n    at constructor (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:358:12)\n    at Parser.raise (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:3341:19)\n    at Parser.expectOnePlugin (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:3398:18)\n    at Parser.parseExprAtom (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:13080:18)\n    at Parser.parseExprSubscripts (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12650:23)\n    at Parser.parseUpdate (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12629:21)\n    at Parser.parseMaybeUnary (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12600:23)\n    at Parser.parseMaybeUnaryOrPrivate (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12394:61)\n    at Parser.parseExprOps (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12401:23)\n    at Parser.parseMaybeConditional (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12371:23)\n    at Parser.parseMaybeAssign (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12323:21)\n    at /home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12281:39\n    at Parser.allowInAnd (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:14354:12)\n    at Parser.parseMaybeAssignAllowIn (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12281:17)\n    at Parser.parseParenAndDistinguishExpression (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:13407:28)\n    at Parser.parseExprAtom (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12978:23)\n    at Parser.parseExprSubscripts (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12650:23)\n    at Parser.parseUpdate (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12629:21)\n    at Parser.parseMaybeUnary (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12600:23)\n    at Parser.parseMaybeUnaryOrPrivate (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12394:61)\n    at Parser.parseExprOps (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12401:23)\n    at Parser.parseMaybeConditional (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12371:23)\n    at Parser.parseMaybeAssign (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12323:21)\n    at Parser.parseFunctionBody (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:13946:24)\n    at Parser.parseArrowExpression (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:13924:10)\n    at Parser.parseExprAtom (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:13120:25)\n    at Parser.parseExprSubscripts (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12650:23)\n    at Parser.parseUpdate (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12629:21)\n    at Parser.parseMaybeUnary (/home/ec2-user/environment/Nashikau/node_modules/@babel/parser/lib/index.js:12600:23)");

/***/ })

/******/ });
//# sourceMappingURL=hello_react-8aaa248f1c6cdf298b70.js.map