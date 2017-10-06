/// delay(script, timeout, args_array)
/// calls script in timeout seconds

// we just care about the callback 
var tween = TweenFire(objGuiHandler, "", EaseLinear, TWEEN_MODE_ONCE, true, argument1, 0, 0, 0)

if (argument_count > 2) {
    TweenAddCallback(tween, TWEEN_EV_FINISH_DELAY, id, argument0, argument[2]);
} else {
    TweenAddCallback(tween, TWEEN_EV_FINISH_DELAY, id, argument0);
}
