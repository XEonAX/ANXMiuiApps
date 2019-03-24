package miui.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.preference.Preference.BaseSavedState;
import android.preference.PreferenceManager;
import android.preference.PreferenceManager.OnActivityStopListener;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.miui.internal.R;
import miui.reflect.Field;
import miui.reflect.Method;

public class VolumePreference extends SeekBarDialogPreference implements OnActivityStopListener, OnKeyListener {
    private static final Method EB = Method.of(PreferenceManager.class, "registerOnActivityStopListener", "(Landroid/preference/PreferenceManager$OnActivityStopListener;)V");
    private static final Method ED = Method.of(PreferenceManager.class, "unregisterOnActivityStopListener", "(Landroid/preference/PreferenceManager$OnActivityStopListener;)V");
    private static final int EF = cL();
    private static final String TAG = "VolumePreference";
    private int EH;
    private SeekBarVolumizer EI;

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: f */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: Q */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        VolumeStore EJ = new VolumeStore();

        public SavedState(Parcel parcel) {
            super(parcel);
            this.EJ.volume = parcel.readInt();
            this.EJ.originalVolume = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.EJ.volume);
            parcel.writeInt(this.EJ.originalVolume);
        }

        VolumeStore cN() {
            return this.EJ;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public class SeekBarVolumizer implements Callback, OnSeekBarChangeListener {
        private static final int EQ = 0;
        private static final int EU = 1;
        private static final int EV = 2;
        private static final int EW = 1000;
        private int EH;
        private AudioManager EK;
        private int EL;
        private Ringtone EM;
        private int EN;
        private SeekBar EO;
        private int EP;
        private ContentObserver EX;
        private Context mContext;
        private Handler mHandler;

        public SeekBarVolumizer(VolumePreference volumePreference, Context context, SeekBar seekBar, int i) {
            this(context, seekBar, i, null);
        }

        public SeekBarVolumizer(Context context, SeekBar seekBar, int i, Uri uri) {
            this.EN = -1;
            this.EP = -1;
            this.EX = new ContentObserver(this.mHandler) {
                public void onChange(boolean z) {
                    super.onChange(z);
                    if (SeekBarVolumizer.this.EO != null && SeekBarVolumizer.this.EK != null) {
                        SeekBarVolumizer.this.EO.setProgress(SeekBarVolumizer.this.EK.getStreamVolume(SeekBarVolumizer.this.EH));
                    }
                }
            };
            this.mContext = context;
            this.EK = (AudioManager) context.getSystemService("audio");
            this.EH = i;
            this.EO = seekBar;
            HandlerThread handlerThread = new HandlerThread("VolumePreference.CallbackHandler");
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper(), this);
            a(seekBar, uri);
        }

        private void a(SeekBar seekBar, Uri uri) {
            seekBar.setMax(this.EK.getStreamMaxVolume(this.EH));
            this.EL = this.EK.getStreamVolume(this.EH);
            seekBar.setProgress(this.EL);
            seekBar.setOnSeekBarChangeListener(this);
            this.mContext.getContentResolver().registerContentObserver(System.getUriFor(System.VOLUME_SETTINGS[this.EH]), false, this.EX);
            if (uri == null) {
                if (this.EH == 2) {
                    uri = System.DEFAULT_RINGTONE_URI;
                } else if (this.EH == 5) {
                    uri = System.DEFAULT_NOTIFICATION_URI;
                } else {
                    uri = System.DEFAULT_ALARM_ALERT_URI;
                }
            }
            this.EM = RingtoneManager.getRingtone(this.mContext, uri);
            if (this.EM != null) {
                this.EM.setStreamType(this.EH);
            }
        }

        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    this.EK.setStreamVolume(this.EH, this.EN, 0);
                    break;
                case 1:
                    cP();
                    break;
                case 2:
                    cR();
                    break;
                default:
                    String str = VolumePreference.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("invalid SeekBarVolumizer message: ");
                    stringBuilder.append(message.what);
                    Log.e(str, stringBuilder.toString());
                    break;
            }
            return true;
        }

        private void cO() {
            this.mHandler.removeMessages(1);
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), isSamplePlaying() ? 1000 : 0);
        }

        private void cP() {
            if (!isSamplePlaying()) {
                VolumePreference.this.onSampleStarting(this);
                if (this.EM != null) {
                    this.EM.play();
                }
            }
        }

        private void cQ() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(2));
        }

        private void cR() {
            if (this.EM != null) {
                this.EM.stop();
            }
        }

        public void stop() {
            cQ();
            this.mContext.getContentResolver().unregisterContentObserver(this.EX);
            this.EO.setOnSeekBarChangeListener(null);
        }

        public void revertVolume() {
            this.EK.setStreamVolume(this.EH, this.EL, 0);
        }

        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                R(i);
            }
        }

        void R(int i) {
            this.EN = i;
            this.mHandler.removeMessages(0);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(0));
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            cO();
        }

        public boolean isSamplePlaying() {
            return this.EM != null && this.EM.isPlaying();
        }

        public void startSample() {
            cO();
        }

        public void stopSample() {
            cQ();
        }

        public SeekBar getSeekBar() {
            return this.EO;
        }

        public void changeVolumeBy(int i) {
            this.EO.incrementProgressBy(i);
            R(this.EO.getProgress());
            cO();
            this.EP = -1;
        }

        public void muteVolume() {
            if (this.EP != -1) {
                this.EO.setProgress(this.EP);
                R(this.EP);
                cO();
                this.EP = -1;
                return;
            }
            this.EP = this.EO.getProgress();
            this.EO.setProgress(0);
            cQ();
            R(0);
        }

        public void onSaveInstanceState(VolumeStore volumeStore) {
            if (this.EN >= 0) {
                volumeStore.volume = this.EN;
                volumeStore.originalVolume = this.EL;
            }
        }

        public void onRestoreInstanceState(VolumeStore volumeStore) {
            if (volumeStore.volume != -1) {
                this.EL = volumeStore.originalVolume;
                this.EN = volumeStore.volume;
                R(this.EN);
            }
        }
    }

    public static class VolumeStore {
        public int originalVolume = -1;
        public int volume = -1;
    }

    private static int cL() {
        try {
            return Field.of("android.R.styleable", "VolumePreference_streamType", Field.INT_SIGNATURE_PRIMITIVE).getInt(null);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public VolumePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VolumePreference, 0, 0);
        this.EH = obtainStyledAttributes.getInt(EF, 0);
        obtainStyledAttributes.recycle();
    }

    public void setStreamType(int i) {
        this.EH = i;
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        this.EI = new SeekBarVolumizer(this, getContext(), (SeekBar) view.findViewById(R.id.seekbar), this.EH);
        EB.invoke(PreferenceManager.class, getPreferenceManager(), this);
        view.setOnKeyListener(this);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.EI == null) {
            return true;
        }
        boolean z = keyEvent.getAction() == 0;
        if (i != 164) {
            switch (i) {
                case 24:
                    if (z) {
                        this.EI.changeVolumeBy(1);
                    }
                    return true;
                case 25:
                    if (z) {
                        this.EI.changeVolumeBy(-1);
                    }
                    return true;
                default:
                    return false;
            }
        }
        if (z) {
            this.EI.muteVolume();
        }
        return true;
    }

    protected void onDialogClosed(boolean z) {
        super.onDialogClosed(z);
        if (!(z || this.EI == null)) {
            this.EI.revertVolume();
        }
        cM();
    }

    public void onActivityStop() {
        if (this.EI != null) {
            this.EI.cQ();
        }
    }

    private void cM() {
        ED.invoke(PreferenceManager.class, getPreferenceManager(), this);
        if (this.EI != null) {
            Dialog dialog = getDialog();
            if (dialog != null && dialog.isShowing()) {
                View findViewById = dialog.getWindow().getDecorView().findViewById(R.id.seekbar);
                if (findViewById != null) {
                    findViewById.setOnKeyListener(null);
                }
                this.EI.revertVolume();
            }
            this.EI.stop();
            this.EI = null;
        }
    }

    protected void onSampleStarting(SeekBarVolumizer seekBarVolumizer) {
        if (this.EI != null && seekBarVolumizer != this.EI) {
            this.EI.stopSample();
        }
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        Parcelable savedState = new SavedState(onSaveInstanceState);
        if (this.EI != null) {
            this.EI.onSaveInstanceState(savedState.cN());
        }
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.EI != null) {
            this.EI.onRestoreInstanceState(savedState.cN());
        }
    }
}
