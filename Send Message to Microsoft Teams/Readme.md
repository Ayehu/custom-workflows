<i><b>Accompanying Ayehu Support Article:</b> <a href="https://support.ayehu.com/hc/en-us/articles/360041289013">https://support.ayehu.com/hc/en-us/articles/360041289013</a></b></i>

<h1>Description</h1>
Ayehu NG ships with very useful out-of-the-box HTTP Request activities that allow users to send data to REST/SOAP APIs with a JSON or XML-formatted payload.  This unlocks the platform to communicate with a virtually endless list of third-party applications and services.
<br><br>
The Microsoft Teams messaging platform has a built-in Incoming Webook feature that allows external applications to push data to it in order to send messages to a channel.  This tutorial will outline the steps necessary to enable this feature in your own Teams instance, as well as configure a workflow to send a message to your Teams channels.
<br>
<h1>Microsoft Teams Configuration</h1>
Our first step is to configure the Incoming Webhook connector on the Microsoft Teams channel of your choice.  To do this, navigate to the Teams view on your client.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360054752733/Capture2.PNG">
<br><br>
From there, locate the channel you'd like to configure.  Then, right-click on its name and on the menu that appears, click the Connectors entry.
<br><br>
<a href="https://support.ayehu.com/hc/article_attachments/360054752913/mceclip0.png">
<br><br>
On the window that appears, click the Add button to the right of the Incoming Webook entry.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360053899814/mceclip1.png">
<br><br>
Then, click the Add button on the left side of the window that appears.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360054753073/mceclip2.png">
<br><br>
Now, give your Connector a name and an optional icon.  Then, click Create.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360054753233/mceclip3.png">
<br><br>
After creating the new Incoming Webhook Connector, a URL will be generated.  Copy the URL and save it somewhere safe.  We will be using this in our workflow to send messages from Ayehu NG to your Microsoft Teams channel.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360054753373/mceclip4.png">
<br>
<h1>Workflow Overview</h1>
Below is a screenshot of an Ayehu NG workflow that will send the message of your choice to a Microsoft Teams channel.  You can also download an export of this workflow attached to this article or on the Ayehu GitHub at https://github.com/Ayehu/custom-workflows/blob/master/Send%20Message%20to%20Microsoft%20Teams/Microsoft%20Teams%20Send%20Message.xml
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360053900134/mceclip5.png">
<br>
<h1>Activity Configuration</h1>
Now, let's look at each activity in this workflow, step-by-step.  By doing so, you'll be able to follow along and implement these activities into your own workflows wherever you want to send a message to a Microsoft Teams channel.
<br><br>
Our first step is to store the URL generated when you configured your Incoming Webhook Connector by using a MemorySet activity and storing the URL in a variable named webhookURL.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360053900274/mceclip7.png">
<br><br>
Our next step is to store our message text to be sent to Microsoft Teams using another MemorySet activity to create a variable named messageText.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360054753633/mceclip8.png">
<br><br>
Our final step is to use an HTTPRequest activity to send our message text to the channel configured earlier in this tutorial.  Enter %webhookURL% in the URL field, select Post from the Request Type drop-down, select application/json from the Content Type drop-down, and for the Post Data field, use the following JSON:
<br>
<pre>
{ "text": "%messageText%" }
</pre>
<br>
<img src="https://support.ayehu.com/hc/article_attachments/360053900334/mceclip9.png">
<br>
<h1>Workflow Execution</h1>
Below is a screenshot of the Workflow Execution Log from the sample workflow used in this article.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360053911734/mceclip0.png">
<br><br>
Back in Microsoft Teams, we can see that we received the following message in our channel.
<br><br>
<img src="https://support.ayehu.com/hc/article_attachments/360054762233/mceclip1.png">
