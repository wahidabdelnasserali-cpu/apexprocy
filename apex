export default {
  async fetch(request) {
    // The target APEX URL
    let targetBase = "https://g1800f0c7a9a451-ecosystem01.adb.me-dubai-1.oraclecloudapps.com/ords/r/ecosystem/ecosystembeta107";

    let url = new URL(request.url);
    let targetUrl = new URL(targetBase + url.pathname + url.search);

    return fetch(new Request(targetUrl, request));
  }
}
