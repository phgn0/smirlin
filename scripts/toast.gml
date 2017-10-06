/// toast(string)
/// shows a toast (small message on the screen)

if (ds_queue_empty(objToastManager.messages)) {   
    // we're the only message
    delay(scrToast_showNextMessage, 2);
}

ds_queue_enqueue(objToastManager.messages, argument0);
