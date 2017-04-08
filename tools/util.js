export function jsonParseOrNull(str) {
	try {
		return JSON.parse(str);
	} catch (e) {
		return null;
	}
}
