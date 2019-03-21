package com.miui.gallery.editor.photo.core.imports.text;

import android.app.Activity;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.imports.text.TextEditorView.TextEditorListener;
import com.miui.gallery.editor.photo.core.imports.text.base.ITextDialogConfig;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;
import com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog;
import com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog.ConfigChangeListener;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.utils.AutoLineLayout.TextAlignment;
import com.miui.gallery.editor.photo.core.imports.text.watermark.WatermarkInfo;
import com.miui.gallery.editor.photo.core.imports.text.watermark.WatermarkInfo.TextPieceInfo;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableGenericUtils;
import com.miui.gallery.util.Log;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class TextFragment extends AbstractEffectFragment {
    private String mBubbleText;
    private int mCurrentIndex = 0;
    private TextStyle mCurrentTextStyle;
    private StatusListener mStatusListener = new StatusListener(this, null);
    private SparseArray<DialogStatusData> mTextConfigDataArray = new SparseArray();
    private TextEditDialog mTextEditDialog;
    private TextEditorListener mTextEditorListener = new TextEditorListener() {
        public void onModify() {
        }

        public void onClear() {
            TextFragment.this.mCurrentIndex = -1;
            TextFragment.this.mTextEditorView.onClear();
        }

        public void onItemEdit() {
            if (!TextFragment.this.isDetached()) {
                Activity activity = TextFragment.this.getActivity();
                if (activity != null && !activity.isFinishing() && !TextFragment.this.mTextEditDialog.isShowing()) {
                    String text = TextFragment.this.mTextEditorView.getItemText();
                    TextFragment.this.mTextEditDialog.setWillEditText(text, TextFragment.this.getString(R.string.text_append_hint).equals(text));
                    DialogStatusData textStatusData = TextFragment.this.getTextConfigDataByIndex(TextFragment.this.mCurrentIndex);
                    TextFragment.this.mTextEditorView.getCurrentItemStatus(textStatusData);
                    TextFragment.this.mTextEditDialog.setInitializeData(textStatusData);
                    TextFragment.this.mTextEditDialog.showAllowingStateLoss(TextFragment.this.getFragmentManager(), "TextEditDialog");
                }
            }
        }
    };
    private TextEditorView mTextEditorView;
    private TextWatcher mTextWatcher = new TextWatcher() {
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        public void onTextChanged(CharSequence s, int start, int before, int count) {
            TextFragment.this.mTextEditorView.setItemText(s.toString());
            TextFragment.this.mStatusListener.onTextChange();
        }

        public void afterTextChanged(Editable s) {
        }
    };

    private class ConfigListener implements ConfigChangeListener {
        private ConfigListener() {
        }

        /* synthetic */ ConfigListener(TextFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onColorChange(int color) {
            TextFragment.this.mTextEditorView.setItemTextColor(color);
        }

        public void onTransparentChange(int progress) {
            TextFragment.this.mTextEditorView.setItemTransparent(((float) progress) / 100.0f);
        }

        public void onShadowChange(boolean shadow) {
            TextFragment.this.mTextEditorView.setItemShadow(shadow);
        }

        public void onTextAlignChange(TextAlignment textAlignment) {
            TextFragment.this.mTextEditorView.setItemTextAlignment(textAlignment);
        }

        public void onBoldChange(boolean bold) {
            TextFragment.this.mTextEditorView.setItemBold(bold);
        }

        public void onTypefaceChange(TextStyle textStyle) {
            TextFragment.this.mCurrentTextStyle = textStyle;
            TextFragment.this.mTextEditorView.setItemTypeface(textStyle);
        }
    }

    public static class TextStatusData implements Parcelable {
        public static final Creator<TextStatusData> CREATOR = new Creator<TextStatusData>() {
            public TextStatusData createFromParcel(Parcel source) {
                return new TextStatusData(source);
            }

            public TextStatusData[] newArray(int size) {
                return new TextStatusData[size];
            }
        };
        public int color;
        public String text;
        public TextAlignment textAlignment;
        public boolean textBold;
        public boolean textShadow;
        public TextStyle textStyle;
        public float transparentProgress;

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            byte b;
            byte b2 = (byte) 1;
            dest.writeInt(this.color);
            dest.writeFloat(this.transparentProgress);
            if (this.textBold) {
                b = (byte) 1;
            } else {
                b = (byte) 0;
            }
            dest.writeByte(b);
            if (!this.textShadow) {
                b2 = (byte) 0;
            }
            dest.writeByte(b2);
            dest.writeInt(this.textAlignment == null ? -1 : this.textAlignment.ordinal());
            dest.writeString(this.text);
        }

        protected TextStatusData(Parcel in) {
            boolean z;
            boolean z2 = true;
            this.color = in.readInt();
            this.transparentProgress = in.readFloat();
            if (in.readByte() != (byte) 0) {
                z = true;
            } else {
                z = false;
            }
            this.textBold = z;
            if (in.readByte() == (byte) 0) {
                z2 = false;
            }
            this.textShadow = z2;
            int tmpTextAlignment = in.readInt();
            this.textAlignment = tmpTextAlignment == -1 ? null : TextAlignment.values()[tmpTextAlignment];
            this.text = in.readString();
        }
    }

    public static class DialogStatusData extends TextStatusData implements Parcelable {
        public static final Creator<DialogStatusData> CREATOR = new Creator<DialogStatusData>() {
            public DialogStatusData createFromParcel(Parcel source) {
                return new DialogStatusData(source);
            }

            public DialogStatusData[] newArray(int size) {
                return new DialogStatusData[size];
            }
        };
        public boolean isReverseColor;
        public float itemDegree;
        public float itemPositionX;
        public float itemPositionY;
        public float itemScale;
        public TextStatusData[] textStatusDatas;

        void configSelfByInit(BaseDialogModel baseDialogModel) {
            if (baseDialogModel == null || !baseDialogModel.hasDialog()) {
                this.color = -1;
                this.textAlignment = TextAlignment.LEFT;
                this.textShadow = true;
            } else if (baseDialogModel.isCorner) {
                this.color = -1;
                this.textAlignment = TextAlignment.LEFT;
                this.textShadow = true;
            } else {
                this.color = -16777216;
                this.textAlignment = TextAlignment.CENTER;
                this.textShadow = false;
            }
            this.transparentProgress = 0.0f;
            this.textStyle = null;
            this.textBold = false;
            this.itemScale = 1.0f;
            this.itemDegree = 0.0f;
            this.itemPositionX = 0.0f;
            this.itemPositionY = 0.0f;
        }

        void setEmpty() {
            this.color = -1;
            this.textAlignment = TextAlignment.LEFT;
            this.transparentProgress = 0.0f;
            this.textStyle = null;
            this.textBold = false;
            this.textShadow = false;
            this.itemScale = 1.0f;
            this.itemDegree = 0.0f;
            this.itemPositionX = 0.0f;
            this.itemPositionY = 0.0f;
            this.textStatusDatas = new TextStatusData[0];
        }

        void watermarkInitSelf(WatermarkInfo watermarkInfo) {
            if (watermarkInfo == null || watermarkInfo.textPieceList == null) {
                setEmpty();
                return;
            }
            this.textStatusDatas = new TextStatusData[watermarkInfo.textPieceList.size()];
            for (int i = 0; i < this.textStatusDatas.length; i++) {
                TextStatusData textStatusData = new TextStatusData();
                textStatusData.textBold = ((TextPieceInfo) watermarkInfo.textPieceList.get(i)).isBold;
                textStatusData.color = -1;
                textStatusData.textAlignment = TextAlignment.LEFT;
                textStatusData.transparentProgress = 0.0f;
                textStatusData.textStyle = null;
                textStatusData.textShadow = false;
                this.textStatusDatas[i] = textStatusData;
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeFloat(this.itemPositionX);
            dest.writeFloat(this.itemPositionY);
            dest.writeFloat(this.itemScale);
            dest.writeFloat(this.itemDegree);
            dest.writeByte(this.isReverseColor ? (byte) 1 : (byte) 0);
            ParcelableGenericUtils.writeArray(dest, flags, this.textStatusDatas, TextStatusData.class);
        }

        protected DialogStatusData(Parcel in) {
            this.itemPositionX = in.readFloat();
            this.itemPositionY = in.readFloat();
            this.itemScale = in.readFloat();
            this.itemDegree = in.readFloat();
            this.isReverseColor = in.readByte() != (byte) 0;
            this.textStatusDatas = (TextStatusData[]) ParcelableGenericUtils.readArray(in);
        }
    }

    private class StatusListener implements com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog.StatusListener {
        private int mDialogBottom;

        private StatusListener() {
        }

        /* synthetic */ StatusListener(TextFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onShow() {
        }

        public void onDismiss() {
        }

        public void onBottomChange(int bottom) {
            this.mDialogBottom = bottom;
            Log.d("TextFragment", "onBottomChange: %d", Integer.valueOf(bottom));
            int activationItemBottom = TextFragment.this.mTextEditorView.getActivationItemBottom();
            Log.d("TextFragment", "text bottom: %d", Integer.valueOf(activationItemBottom));
            if (activationItemBottom > bottom) {
                TextFragment.this.mTextEditorView.offsetWithAnimator((float) (bottom - activationItemBottom));
            } else {
                TextFragment.this.mTextEditorView.offsetWithAnimator(0.0f);
            }
        }

        void onTextChange() {
            onBottomChange(this.mDialogBottom);
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        FrameLayout layout = (FrameLayout) inflater.inflate(R.layout.editor_view_container, container, false);
        this.mTextEditorView = new TextEditorView(getActivity());
        this.mTextEditDialog = new TextEditDialog();
        this.mTextEditDialog.setConfigChangeListener(new ConfigListener(this, null));
        this.mTextEditorView.setTextEditorListener(this.mTextEditorListener);
        this.mTextEditDialog.setTextWatch(this.mTextWatcher);
        this.mTextEditDialog.setStatusListener(this.mStatusListener);
        this.mTextEditorView.setBitmap(getBitmap());
        int paddingLeft = getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding);
        this.mTextEditorView.setPadding(paddingLeft, getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding_top), paddingLeft, 0);
        layout.addView(this.mTextEditorView, -1, -1);
        return layout;
    }

    public boolean isEmpty() {
        return this.mTextEditorView.isEmpty();
    }

    protected List<String> onSample() {
        List<String> list = new ArrayList();
        ITextDialogConfig textConfig = this.mTextEditorView.getItemTextDialogConfig();
        if (textConfig != null) {
            list.add(textConfig.getSampleName());
        }
        if (this.mCurrentTextStyle != null) {
            list.add("font_" + this.mCurrentTextStyle.getName());
        }
        list.add("color_" + Integer.toHexString(this.mTextEditorView.getItemColor()));
        if (this.mTextEditorView.getItemBold()) {
            list.add("bold");
        }
        if (this.mTextEditorView.getItemShadow()) {
            list.add("shadow");
        }
        TextAlignment textAlignment = this.mTextEditorView.getItemAlignment();
        if (textAlignment != TextAlignment.LEFT) {
            list.add("align_" + textAlignment);
        }
        float transparent = this.mTextEditorView.getItemTransparent();
        if (transparent > 0.0f) {
            list.add("transparent_" + new DecimalFormat(".0").format((double) transparent));
        }
        return list;
    }

    protected RenderData onExport() {
        return new TextRenderData(this.mTextEditorView.export());
    }

    public void add(Metadata effect, Object param) {
        if (isAdded()) {
            int newIndex = ((Integer) param).intValue();
            TextConfig textConfig = (TextConfig) effect;
            if (newIndex != this.mCurrentIndex) {
                DialogStatusData textStatusData = getTextConfigDataByIndex(this.mCurrentIndex);
                this.mTextEditorView.getDialogStatusData(textStatusData);
                ITextDialogConfig lastTextConfig = this.mTextEditorView.getItemTextDialogConfig();
                if (!(lastTextConfig == null || lastTextConfig.isWatermark())) {
                    this.mBubbleText = textStatusData.text;
                }
                this.mTextEditorView.removeLastItem();
                this.mTextEditorView.addNewItem(textConfig);
                if (!this.mTextEditorView.isItemActivation()) {
                    this.mTextEditorView.setLastItemActivation();
                }
                performSetDialog(textConfig, newIndex);
            }
        }
    }

    private void performSetDialog(TextConfig textConfig, int newIndex) {
        BaseDialogModel baseDialogModel = textConfig.getBaseDialogModel();
        DialogStatusData newData = (DialogStatusData) this.mTextConfigDataArray.get(newIndex);
        boolean isNew = false;
        if (newData == null) {
            newData = getTextConfigDataByIndex(newIndex);
            if (textConfig.isWatermark()) {
                newData.watermarkInitSelf(textConfig.getWatermarkInfo());
            } else {
                newData.configSelfByInit(baseDialogModel);
            }
            isNew = true;
        }
        if (!textConfig.isWatermark()) {
            newData.text = this.mBubbleText;
        }
        this.mTextEditorView.enableStatusForCurrentItem(newData, isNew);
        this.mCurrentIndex = newIndex;
        this.mTextEditorView.setItemDialogModel(baseDialogModel);
    }

    public void remove(Metadata effect) {
    }

    public void render() {
    }

    public void clear() {
    }

    public DialogStatusData getTextConfigDataByIndex(int index) {
        DialogStatusData textStatusData = (DialogStatusData) this.mTextConfigDataArray.get(index);
        if (textStatusData != null) {
            return textStatusData;
        }
        textStatusData = new DialogStatusData();
        textStatusData.setEmpty();
        this.mTextConfigDataArray.put(index, textStatusData);
        return textStatusData;
    }
}
