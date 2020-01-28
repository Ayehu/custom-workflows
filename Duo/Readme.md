<h2>Quick Explanation</h2>
<ul>
  <li>Import workflows: "Duo - Authorize" (child) and "Duo - Authorization Frontend Example" (parent)</li>
  <li>On the parent workflow, edit the "setUsername" MemorySet activity with the Duo username to which the authorization request will be sent.</li>
  <li>On the parent workflow, ensure that the "sendDuoAuth" RunWorkFlow activity is correctly pointing to the "Duo - Authorize" workflow.</li>
  <li>On the child workflow, your Duo API's specific endpoint URL, as well as integration key and secret key, must be set in the first three MemorySet activities ("setAPI", "setIntegrationKey", "setSecretKey").
  <li>Execute the parent workflow and watch as the "duoAuthResponse" DisplayValue activity displays either "allow" or "deny" based on the response received by the Duo user upon receiving their authorization request.</li>
</ul>

<b><i>Detailed tutorial coming soon...</i></b>
