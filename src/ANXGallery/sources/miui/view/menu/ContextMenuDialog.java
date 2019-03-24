package miui.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.view.MenuItem;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuDialogHelper;
import java.util.ArrayList;
import java.util.List;

public class ContextMenuDialog {
    private final List<Runnable> Oh = new ArrayList();
    private ContextMenuBuilder Oi;
    private final Context mContext;

    private static class ContextMenuBuilder extends MenuBuilder {
        public ContextMenuBuilder(Context context) {
            super(context);
        }

        public MenuBuilder b(CharSequence charSequence) {
            return super.setHeaderTitleInt(charSequence);
        }

        public MenuBuilder ag(int i) {
            return super.setHeaderTitleInt(i);
        }

        public MenuBuilder f(Drawable drawable) {
            return super.setHeaderIconInt(drawable);
        }

        public MenuBuilder ah(int i) {
            return super.setHeaderIconInt(i);
        }

        public MenuDialogHelper a(IBinder iBinder) {
            if (getVisibleItems().size() <= 0) {
                return null;
            }
            MenuDialogHelper menuDialogHelper = new MenuDialogHelper(this);
            menuDialogHelper.show(iBinder);
            return menuDialogHelper;
        }
    }

    public ContextMenuDialog(Context context) {
        this.mContext = context;
        this.Oi = new ContextMenuBuilder(this.mContext);
        this.Oi.setCallback(new Callback() {
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                ((Runnable) ContextMenuDialog.this.Oh.get(menuItem.getItemId())).run();
                return true;
            }

            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
    }

    public void setTitle(String str) {
        this.Oi.b(str);
    }

    public void setTitle(int i) {
        this.Oi.ag(i);
    }

    public void setIcon(Drawable drawable) {
        this.Oi.f(drawable);
    }

    public void setIcon(int i) {
        this.Oi.ah(i);
    }

    public void addMenuItem(String str, Runnable runnable) {
        this.Oi.add(0, this.Oh.size(), 0, (CharSequence) str);
        this.Oh.add(runnable);
    }

    public void addMenuItem(int i, Runnable runnable) {
        addMenuItem(this.mContext.getString(i), runnable);
    }

    public void show() {
        this.Oi.a(null);
    }
}
