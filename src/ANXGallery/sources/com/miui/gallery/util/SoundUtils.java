package com.miui.gallery.util;

import android.content.Context;
import android.media.AudioAttributes.Builder;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import java.io.File;

public class SoundUtils {
    public static void playSoundForOperation(final Context context, final int operationType) {
        if (ThreadManager.isMainThread()) {
            ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    SoundUtils.internalPlaySoundForOperation(context, operationType);
                    return null;
                }
            });
        } else {
            internalPlaySoundForOperation(context, operationType);
        }
    }

    private static void internalPlaySoundForOperation(Context context, int operationType) {
        if (shouldPlaySoundForOperation(context, operationType)) {
            Uri uri = getRingtoneUriForOperation(operationType);
            if (uri == null) {
                Log.e("SoundUtils", "No sound resource found for operation %s", Integer.valueOf(operationType));
                return;
            }
            Ringtone ringtone = RingtoneManager.getRingtone(context, uri);
            if (ringtone == null) {
                Log.e("SoundUtils", "Get ringtone failed for operation %s, sound source %s", Integer.valueOf(operationType), uri);
                return;
            }
            setRingtoneStream(ringtone);
            ringtone.play();
            return;
        }
        Log.d("SoundUtils", "Shouldn't play sound for operation %s, just return", Integer.valueOf(operationType));
    }

    private static boolean shouldPlaySoundForOperation(Context context, int operationType) {
        if (operationType != 0) {
            return true;
        }
        try {
            int setting = System.getInt(context.getContentResolver(), "delete_sound_effect");
            Log.d("SoundUtils", "Got sound setting value %d", Integer.valueOf(setting));
            if (setting > 0) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            Log.w("SoundUtils", e);
            return true;
        }
    }

    private static Uri getRingtoneUriForOperation(int operationType) {
        String filePath = null;
        switch (operationType) {
            case 0:
                filePath = "/system/media/audio/ui/Delete.ogg";
                break;
        }
        if (!TextUtils.isEmpty(filePath)) {
            File file = new File(filePath);
            if (file.exists()) {
                return Uri.fromFile(file);
            }
            Log.w("SoundUtils", "Sound file %s do not exist", file);
        }
        return null;
    }

    private static void setRingtoneStream(Ringtone ringtone) {
        if (VERSION.SDK_INT >= 21) {
            ringtone.setAudioAttributes(new Builder().setLegacyStreamType(1).build());
        } else {
            ringtone.setStreamType(1);
        }
    }
}
