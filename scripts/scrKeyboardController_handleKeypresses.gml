/// handleKeypresses()
/// Processes all current keypresses.


if (keyboard_check(ord("A")) || keyboard_check(vk_left)){
    scrCameraController_moveCameraAdjusted(camera_movement.left);
}

if (keyboard_check(ord("W")) || keyboard_check(vk_up)){
    scrCameraController_moveCameraAdjusted(camera_movement.up);
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right)){
    scrCameraController_moveCameraAdjusted(camera_movement.right);
}

if (keyboard_check(ord("S")) || keyboard_check(vk_down)){
    scrCameraController_moveCameraAdjusted(camera_movement.down);
}

