package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

public class ServerUnModifyAlbumsStrategy extends BaseStrategy {
    @SerializedName("albums")
    private List<ServerUnModifyAlbum> mAlbums;

    public static class ServerUnModifyAlbum {
        @SerializedName("name")
        private String mName;
        @SerializedName("serverId")
        private long mServerId;

        public ServerUnModifyAlbum(long serverId, String name) {
            this.mServerId = serverId;
            this.mName = name;
        }

        public long getServerId() {
            return this.mServerId;
        }

        public String getName() {
            return this.mName;
        }

        public String toString() {
            return "ServerUnModifyAlbum{mServerId=" + this.mServerId + ", mName=" + this.mName + '}';
        }
    }

    public static ServerUnModifyAlbumsStrategy createDefault() {
        ServerUnModifyAlbumsStrategy strategy = new ServerUnModifyAlbumsStrategy();
        strategy.mAlbums = new ArrayList();
        strategy.mAlbums.add(new ServerUnModifyAlbum(1, "untitled"));
        strategy.mAlbums.add(new ServerUnModifyAlbum(2, "snapshot"));
        return strategy;
    }

    public String getServerAlbumName(long serverId) {
        if (this.mAlbums != null) {
            for (ServerUnModifyAlbum album : this.mAlbums) {
                if (album.getServerId() == serverId) {
                    return album.getName();
                }
            }
        }
        return null;
    }

    public boolean containsName(String albumName) {
        if (TextUtils.isEmpty(albumName)) {
            return true;
        }
        if (this.mAlbums != null) {
            for (ServerUnModifyAlbum album : this.mAlbums) {
                if (album.getName().equalsIgnoreCase(albumName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<ServerUnModifyAlbum> getAlbums() {
        return this.mAlbums;
    }

    public String toString() {
        return "ServerUnModifyAlbumsStrategy{mAlbums=" + this.mAlbums + '}';
    }
}
