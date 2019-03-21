package com.miui.gallery.widget.menu;

public interface ImmersionMenuListener {
    void onCreateImmersionMenu(ImmersionMenu immersionMenu);

    void onImmersionMenuSelected(ImmersionMenu immersionMenu, ImmersionMenuItem immersionMenuItem);

    boolean onPrepareImmersionMenu(ImmersionMenu immersionMenu);
}
