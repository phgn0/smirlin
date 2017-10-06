/// scrToast_showNextMessage()
/// shows the next queued message (or none if last already shown)

ds_queue_dequeue(objToastManager.messages);

if (not ds_queue_empty(objToastManager.messages)) {   
    delay(scrToast_showNextMessage, 2);
}
