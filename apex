export default {
  async fetch(request) {
    const url = new URL(request.url);

    // Oracle APEX hostname
    url.hostname = "g1800f0c7a9a451-ecosystem01.adb.me-dubai-1.oraclecloudapps.com";

    // Add APEX app path
    url.pathname = "/ords/r/ecosystem/ecosystembeta107" + url.pathname;

    // Forward request (keeps query params & headers)
    return fetch(url.toString(), request);
  }
}

