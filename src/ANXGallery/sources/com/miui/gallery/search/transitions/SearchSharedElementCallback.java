package com.miui.gallery.search.transitions;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.SharedElementCallback;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.StringUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SearchSharedElementCallback extends SharedElementCallback {
    private SparseArray<Map<String, Object>> mOriginalSharedElementStates;

    public void onSharedElementStart(List<String> sharedElementNames, List<View> sharedElements, List<View> sharedElementSnapshots) {
        super.onSharedElementStart(sharedElementNames, sharedElements, sharedElementSnapshots);
        int size = Math.min(sharedElements.size(), sharedElementSnapshots.size());
        this.mOriginalSharedElementStates = new SparseArray(size);
        for (int i = 0; i < size; i++) {
            View sharedElement = (View) sharedElements.get(i);
            View snapshot = (View) sharedElementSnapshots.get(i);
            if (!(sharedElement == null || snapshot == null)) {
                Map<String, Object> state = onCaptureSharedElementStates(sharedElement);
                if (state != null) {
                    this.mOriginalSharedElementStates.put(sharedElement.getId(), state);
                }
                if ((sharedElement instanceof ImageView) && (snapshot instanceof ImageView)) {
                    ((ImageView) sharedElement).setImageDrawable(((ImageView) snapshot).getDrawable());
                } else if ((sharedElement instanceof TextView) && (snapshot instanceof TextView)) {
                    ((TextView) sharedElement).setText(((TextView) snapshot).getText());
                    ((TextView) sharedElement).setHint(((TextView) snapshot).getHint());
                    ((TextView) sharedElement).setTextColor(((TextView) snapshot).getCurrentTextColor());
                    ((TextView) sharedElement).setHintTextColor(((TextView) snapshot).getCurrentHintTextColor());
                }
                sharedElement.setBackground(snapshot.getBackground());
            }
        }
    }

    public void onSharedElementEnd(List<String> sharedElementNames, List<View> sharedElements, List<View> sharedElementSnapshots) {
        super.onSharedElementEnd(sharedElementNames, sharedElements, sharedElementSnapshots);
        if (this.mOriginalSharedElementStates != null) {
            for (int i = 0; i < sharedElements.size(); i++) {
                View sharedElement = (View) sharedElements.get(i);
                if (sharedElement != null) {
                    Map<String, Object> state = (Map) this.mOriginalSharedElementStates.get(sharedElement.getId());
                    if (state != null) {
                        if (sharedElement instanceof ImageView) {
                            ((ImageView) sharedElement).setImageDrawable((Drawable) state.get("searchSharedElement:snapshot:image_drawable"));
                        } else if (sharedElement instanceof TextView) {
                            ((TextView) sharedElement).setText((String) state.get("searchSharedElement:snapshot:textview_text"));
                            ((TextView) sharedElement).setHint((String) state.get("searchSharedElement:snapshot:textview_hint"));
                            ((TextView) sharedElement).setTextColor((ColorStateList) state.get("searchSharedElement:snapshot:textview_text_color"));
                            ((TextView) sharedElement).setHintTextColor((ColorStateList) state.get("searchSharedElement:snapshot:textview_hint_color"));
                        }
                        sharedElement.setBackground((Drawable) state.get("searchSharedElement:snapshot:view_background"));
                    }
                }
            }
            this.mOriginalSharedElementStates = null;
        }
    }

    public Parcelable onCaptureSharedElementSnapshot(View sharedElement, Matrix viewToGlobalMatrix, RectF screenBounds) {
        Bundle bundle = new Bundle();
        if (sharedElement != null) {
            TextView textView;
            bundle.putString("searchSharedElement:snapshot:view_class", sharedElement.getClass().getName());
            if (sharedElement instanceof TextView) {
                textView = (TextView) sharedElement;
                bundle.putString("searchSharedElement:snapshot:textview_text", StringUtils.nullToEmpty(textView.getText()));
                bundle.putString("searchSharedElement:snapshot:textview_hint", StringUtils.nullToEmpty(textView.getHint()));
                bundle.putInt("searchSharedElement:snapshot:textview_text_color", textView.getCurrentTextColor());
                bundle.putInt("searchSharedElement:snapshot:textview_hint_color", textView.getCurrentHintTextColor());
                textView.setText(null);
                textView.setHint(null);
            }
            Parcelable parent = super.onCaptureSharedElementSnapshot(sharedElement, viewToGlobalMatrix, screenBounds);
            if (parent != null) {
                bundle.putParcelable("searchSharedElement:snapshot:parent", parent);
            }
            if (sharedElement instanceof TextView) {
                textView = (TextView) sharedElement;
                textView.setText(bundle.getString("searchSharedElement:snapshot:textview_text"));
                textView.setHint(bundle.getString("searchSharedElement:snapshot:textview_hint"));
            }
        }
        return bundle;
    }

    private Map<String, Object> onCaptureSharedElementStates(View sharedElement) {
        Drawable drawable;
        Map<String, Object> state = new HashMap();
        if (sharedElement instanceof ImageView) {
            drawable = ((ImageView) sharedElement).getDrawable();
            if (drawable != null) {
                state.put("searchSharedElement:snapshot:image_drawable", drawable);
            }
        } else if (sharedElement instanceof TextView) {
            state.put("searchSharedElement:snapshot:textview_text", StringUtils.nullToEmpty(((TextView) sharedElement).getText()));
            state.put("searchSharedElement:snapshot:textview_hint", StringUtils.nullToEmpty(((TextView) sharedElement).getHint()));
            state.put("searchSharedElement:snapshot:textview_text_color", ((TextView) sharedElement).getTextColors());
            state.put("searchSharedElement:snapshot:textview_hint_color", ((TextView) sharedElement).getHintTextColors());
        }
        drawable = sharedElement.getBackground();
        if (drawable != null) {
            state.put("searchSharedElement:snapshot:view_background", drawable);
        }
        return state;
    }

    public View onCreateSnapshotView(Context context, Parcelable snapshot) {
        View view = null;
        if (snapshot instanceof Bundle) {
            Bundle bundle = (Bundle) snapshot;
            View parentCreateView = super.onCreateSnapshotView(context, ((Bundle) snapshot).getParcelable("searchSharedElement:snapshot:parent"));
            if (ImageView.class.getName().equals(bundle.getString("searchSharedElement:snapshot:view_class"))) {
                View imageView = new ImageView(context);
                if (parentCreateView instanceof ImageView) {
                    imageView.setImageDrawable(((ImageView) parentCreateView).getDrawable());
                    imageView.setScaleType(((ImageView) parentCreateView).getScaleType());
                    imageView.setImageMatrix(((ImageView) parentCreateView).getImageMatrix());
                } else if (parentCreateView != null) {
                    imageView.setImageDrawable(parentCreateView.getBackground());
                }
                view = imageView;
            } else {
                if (TextView.class.getName().equals(bundle.getString("searchSharedElement:snapshot:view_class"))) {
                    View textView = new TextView(context);
                    textView.setText(bundle.getString("searchSharedElement:snapshot:textview_text"));
                    textView.setHint(bundle.getString("searchSharedElement:snapshot:textview_hint"));
                    textView.setTextColor(bundle.getInt("searchSharedElement:snapshot:textview_text_color"));
                    textView.setHintTextColor(bundle.getInt("searchSharedElement:snapshot:textview_hint_color"));
                    view = textView;
                } else if (parentCreateView != null) {
                    view = parentCreateView;
                } else {
                    SearchLog.e("SearchSharedElementCallback", "What? Invalid params, %s", bundle);
                    view = new View(context);
                }
                if (parentCreateView instanceof ImageView) {
                    view.setBackground(((ImageView) parentCreateView).getDrawable());
                } else if (parentCreateView != null) {
                    view.setBackground(parentCreateView.getBackground());
                }
            }
        } else if (snapshot instanceof Bitmap) {
            view = super.onCreateSnapshotView(context, snapshot);
        }
        if (view != null) {
            return view;
        }
        SearchLog.e("SearchSharedElementCallback", "What? Invalid snapshot, %s", snapshot);
        return new View(context);
    }
}
