package com.miui.gallery.video.editor.model;

import com.miui.gallery.video.editor.ui.MenuFragment;

public class MenuFragmentData {
    public final int iconId;
    public final Class<? extends MenuFragment> menu;
    public final int module;
    public final int nameId;
    public final String tag;

    public MenuFragmentData(Class<? extends MenuFragment> menu, int iconId, int nameId, int module) {
        this.menu = menu;
        this.iconId = iconId;
        this.nameId = nameId;
        this.module = module;
        this.tag = menu == null ? "" : menu.getName();
    }

    public String getTag() {
        return this.tag;
    }

    public boolean isModuleMore() {
        return 22 == this.module;
    }

    public Class<? extends MenuFragment> getMenu() {
        return this.menu;
    }

    public boolean isNavModule() {
        return 16 == this.module;
    }
}
