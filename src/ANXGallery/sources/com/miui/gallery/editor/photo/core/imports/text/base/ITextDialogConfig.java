package com.miui.gallery.editor.photo.core.imports.text.base;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.RectF;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.DialogStatusData;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;

public interface ITextDialogConfig extends ITextSetting {
    void appendUserLocationX(float f);

    void appendUserLocationY(float f);

    boolean contains(float f, float f2);

    void countLocation(boolean z, float f);

    void draw(Canvas canvas);

    BaseDialogModel getDialogModel();

    void getDialogStatusData(DialogStatusData dialogStatusData);

    void getOutLineRect(RectF rectF);

    float getRotateDegrees();

    String getSampleName();

    float getUserLocationX();

    float getUserLocationY();

    float getUserScaleMultiple();

    boolean isActivation();

    boolean isDialogEnable();

    boolean isReverseColor();

    boolean isWatermark();

    void refreshRotateDegree();

    void reverseColor(int i);

    void setActivation(boolean z);

    void setDialogModel(BaseDialogModel baseDialogModel, Resources resources);

    void setDialogWithStatusData(DialogStatusData dialogStatusData);

    void setDisplaySize(float f, float f2);

    void setDrawOutline(boolean z);

    void setRotateDegrees(float f);

    void setScaleMultipleOrigin(float f);

    void setUserScaleMultiple(float f);

    void toggleMirror();
}
