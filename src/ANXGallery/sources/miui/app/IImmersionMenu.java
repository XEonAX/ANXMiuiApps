package miui.app;

import android.view.View;
import android.view.ViewGroup;

public interface IImmersionMenu {
    void dismissImmersionMenu(boolean z);

    void setImmersionMenuEnabled(boolean z);

    void showImmersionMenu();

    void showImmersionMenu(View view, ViewGroup viewGroup);
}
