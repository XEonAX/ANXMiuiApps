package com.miui.gallery.editor.photo.core.common.fragment;

import android.graphics.Bitmap;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderFragment;
import java.util.List;

public abstract class AbstractLongCropFragment extends RenderFragment {
    public abstract void setOriginBitmap(Bitmap bitmap, List<RenderData> list);
}
