// eslint.config.js
module.exports = [
  {
    files: ["**/*.js"],
    languageOptions: {
      parserOptions: {
        ecmaVersion: "latest",
        sourceType: "module",
      },
      globals: {
        module: "readonly",
        process: "readonly",
        __dirname: "readonly",
        require: "readonly",
      },
    },
    rules: {
      "no-console": "off",
    },
  },
];
