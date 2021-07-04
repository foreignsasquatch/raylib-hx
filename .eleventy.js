const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight");

module.exports = function(eleventyConfig) {
	eleventyConfig.addPlugin(syntaxHighlight);
	eleventyConfig.addPassthroughCopy('docs/assets/')
	return {
		passthroughFileCopy: true,
		dir: {
			output: "_site"
		}
	}
}
