package miui.notification;

import android.app.PendingIntent;
import android.graphics.drawable.Drawable;

public class NotificationItem {
    public String action;
    public Drawable actionIcon;
    public PendingIntent clearIntent;
    public PendingIntent clickActionIntent;
    public PendingIntent clickIntent;
    public String content;
    public Drawable icon;
    public int id;
    public String title;

    public int getId() {
        return this.id;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public String getTitle() {
        return this.title;
    }

    public String getContent() {
        return this.content;
    }

    public String getAction() {
        return this.action;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIcon(Drawable icon) {
        this.icon = icon;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public PendingIntent getClickIntent() {
        return this.clickIntent;
    }

    public PendingIntent getClickActionIntent() {
        return this.clickActionIntent;
    }

    public PendingIntent getClearIntent() {
        return this.clearIntent;
    }

    public void setClickIntent(PendingIntent clickIntent) {
        this.clickIntent = clickIntent;
    }

    public void setClickActionIntent(PendingIntent clickActionIntent) {
        this.clickActionIntent = clickActionIntent;
    }

    public void setClearIntent(PendingIntent clearIntent) {
        this.clearIntent = clearIntent;
    }

    public Drawable getActionIcon() {
        return this.actionIcon;
    }

    public void setActionIcon(Drawable actionIcon) {
        this.actionIcon = actionIcon;
    }
}
