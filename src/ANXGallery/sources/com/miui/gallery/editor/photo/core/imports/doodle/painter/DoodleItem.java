package com.miui.gallery.editor.photo.core.imports.doodle.painter;

import android.content.res.Resources;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.path.DoodlePathNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.shape.DoodleCircularNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.shape.DoodleRectangleNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.vector.DoodleArrowNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.vector.DoodleLineNode;

public enum DoodleItem {
    PATH(R.drawable.doodle_path_icon_n, R.drawable.doodle_path_icon_p, R.string.photo_editor_talkback_doodle_path),
    LINE(R.drawable.doodle_line_icon_n, R.drawable.doodle_line_icon_p, R.string.photo_editor_talkback_doodle_line),
    RECTANGLE(R.drawable.doodle_rectangle_icon_n, R.drawable.doodle_rectangle_icon_p, R.string.photo_editor_talkback_doodle_rectangle),
    CIRCULAR(R.drawable.doodle_circular_icon_n, R.drawable.doodle_circular_icon_p, R.string.photo_editor_talkback_doodle_circular),
    ARROW(R.drawable.doodle_arrow_icon_n, R.drawable.doodle_arrow_icon_p, R.string.photo_editor_talkback_doodle_arrow);
    
    public final int normal;
    public final int selected;
    public final int talkback;

    private DoodleItem(int normal, int selected, int talkback) {
        this.normal = normal;
        this.selected = selected;
        this.talkback = talkback;
    }

    public DoodleNode getDoodleDrawable(Resources resources) {
        switch (this) {
            case PATH:
                return new DoodlePathNode(resources);
            case LINE:
                return new DoodleLineNode(resources);
            case RECTANGLE:
                return new DoodleRectangleNode(resources);
            case CIRCULAR:
                return new DoodleCircularNode(resources);
            case ARROW:
                return new DoodleArrowNode(resources);
            default:
                return null;
        }
    }
}
