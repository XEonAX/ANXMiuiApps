package com.miui.gallery.model;

public class FavoriteInfo {
    private boolean mIsFavorite;
    private boolean mIsFavoriteUsable;

    public boolean isFavoriteUsable() {
        return this.mIsFavoriteUsable;
    }

    public void setFavoriteUsable(boolean favoriteUsable) {
        this.mIsFavoriteUsable = favoriteUsable;
    }

    public boolean isFavorite() {
        return this.mIsFavorite;
    }

    public void setFavorite(boolean favorite) {
        this.mIsFavorite = favorite;
    }
}
