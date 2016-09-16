#11:56 AM 8/18/2016
# Target all mailboxes and delete email with Body keywords bewteen certain dates, exclude Archive mailbox.  Export results to csv file

Get-mailbox -ResultSize unlimited | Search-Mailbox -SearchQuery "Received: > $('08/14/2016 00:00:00') AND Received: < $('08/17/2016 23:59:00') and Body:'gdurl.com/NjMQ/'" -DeleteContent -Force -DoNotIncludeArchive | Export-Csv c:\virusdelete.csv
