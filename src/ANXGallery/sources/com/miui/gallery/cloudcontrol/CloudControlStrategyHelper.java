package com.miui.gallery.cloudcontrol;

import com.miui.gallery.cloudcontrol.strategies.AlbumSortDateStrategy;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy.Album;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy.AlbumPattern;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy;
import com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy;
import com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy.Component;
import com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy.Priority;
import com.miui.gallery.cloudcontrol.strategies.CreationStrategy;
import com.miui.gallery.cloudcontrol.strategies.HiddenAlbumsStrategy;
import com.miui.gallery.cloudcontrol.strategies.LocationStrategy;
import com.miui.gallery.cloudcontrol.strategies.PhotoPrintStrategy;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy.FileSizeLimitStrategy;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy.SpecialTypeMediaStrategy;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy.StreamFileStrategy;
import com.miui.gallery.cloudcontrol.strategies.SearchStrategy;
import com.miui.gallery.cloudcontrol.strategies.ServerReservedAlbumNamesStrategy;
import com.miui.gallery.cloudcontrol.strategies.ServerUnModifyAlbumsStrategy;
import com.miui.gallery.cloudcontrol.strategies.SyncStrategy;
import com.miui.gallery.cloudcontrol.strategies.UploadSupportedFileTypeStrategy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

public class CloudControlStrategyHelper {
    public static ArrayList<String> getAlbumsInWhiteList() {
        AlbumsStrategy albumsStrategy = (AlbumsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("album-list");
        return albumsStrategy != null ? albumsStrategy.getAlbumsInWhiteList() : null;
    }

    public static Album getAlbumByPath(String path) {
        AlbumsStrategy albumsStrategy = (AlbumsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("album-list");
        return albumsStrategy != null ? albumsStrategy.getAlbumByPath(path) : null;
    }

    public static List<AlbumPattern> getAlbumPatterns() {
        AlbumsStrategy albumsStrategy = (AlbumsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("album-list");
        return albumsStrategy != null ? albumsStrategy.getAlbumPatterns() : null;
    }

    public static ArrayList<Pattern> getAlbumWhiteListPatterns() {
        AlbumsStrategy albumsStrategy = (AlbumsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("album-list");
        return albumsStrategy != null ? albumsStrategy.getWhiteListPatterns() : null;
    }

    public static ServerUnModifyAlbumsStrategy getServerUnModifyAlbumsStrategy() {
        ServerUnModifyAlbumsStrategy ret = (ServerUnModifyAlbumsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("server-unmodify-albums");
        if (ret == null || ret.getAlbums() == null) {
            return ServerUnModifyAlbumsStrategy.createDefault();
        }
        return ret;
    }

    public static List<Component> getShareComponents() {
        ComponentsStrategy strategy = (ComponentsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("components-list", ComponentsStrategy.CLOUD_FIRST_MERGER);
        if (strategy == null) {
            strategy = ComponentsStrategy.createDefault();
        }
        return strategy.getShareComponents();
    }

    public static List<Priority> getComponentPriority() {
        ComponentsStrategy strategy = (ComponentsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("components-list", ComponentsStrategy.CLOUD_FIRST_MERGER);
        if (strategy == null) {
            strategy = ComponentsStrategy.createDefault();
        }
        return strategy.getComponentPriority();
    }

    public static SyncStrategy getSyncStrategy() {
        SyncStrategy syncStrategy = (SyncStrategy) CloudControlManager.getInstance().queryFeatureStrategy("sync");
        if (syncStrategy == null) {
            return SyncStrategy.createDefault();
        }
        return syncStrategy;
    }

    public static HiddenAlbumsStrategy getHiddenAlbums() {
        return (HiddenAlbumsStrategy) CloudControlManager.getInstance().queryFeatureStrategy("hidden-albums");
    }

    public static LocationStrategy getLocationStrategy() {
        LocationStrategy strategy = (LocationStrategy) CloudControlManager.getInstance().queryFeatureStrategy("location");
        if (strategy == null) {
            return LocationStrategy.createDefault();
        }
        return strategy;
    }

    public static SearchStrategy getSearchStrategy() {
        SearchStrategy searchStrategy = (SearchStrategy) CloudControlManager.getInstance().queryFeatureStrategy("search");
        if (searchStrategy == null) {
            return SearchStrategy.createDefault();
        }
        return searchStrategy;
    }

    public static PhotoPrintStrategy getPhotoPrintStrategy() {
        return (PhotoPrintStrategy) CloudControlManager.getInstance().queryFeatureStrategy("photo-print");
    }

    public static CreationStrategy getCreationStrategy() {
        CreationStrategy strategy = (CreationStrategy) CloudControlManager.getInstance().queryFeatureStrategy("creation");
        return strategy != null ? strategy : CreationStrategy.createDefault();
    }

    public static String getPrintPackageName() {
        PhotoPrintStrategy strategy = getPhotoPrintStrategy();
        return strategy == null ? null : strategy.getPhotoPrintPackageName();
    }

    public static AlbumSortDateStrategy getAlbumSortDateStrategy() {
        return (AlbumSortDateStrategy) CloudControlManager.getInstance().queryFeatureStrategy("album-sort-date");
    }

    public static ServerReservedAlbumNamesStrategy getServerReservedAlbumNamesStrategy() {
        ServerReservedAlbumNamesStrategy strategy = (ServerReservedAlbumNamesStrategy) CloudControlManager.getInstance().queryFeatureStrategy("server-reserved-album-names");
        if (strategy == null) {
            return ServerReservedAlbumNamesStrategy.createDefault();
        }
        return strategy;
    }

    public static StreamFileStrategy getStreamFileStrategy() {
        ScannerStrategy strategy = (ScannerStrategy) CloudControlManager.getInstance().queryFeatureStrategy("media_scanner", ScannerStrategy.CLOUD_FIRST_MERGER);
        if (strategy == null) {
            strategy = ScannerStrategy.createDefault();
        }
        return strategy.getStreamFileStrategy();
    }

    public static FileSizeLimitStrategy getFileSizeLimitStrategy() {
        ScannerStrategy strategy = (ScannerStrategy) CloudControlManager.getInstance().queryFeatureStrategy("media_scanner", ScannerStrategy.CLOUD_FIRST_MERGER);
        if (strategy == null) {
            strategy = ScannerStrategy.createDefault();
        }
        return strategy.getFileSizeStrategy();
    }

    public static HashMap<String, String> getUploadSupportedFileTypes() {
        UploadSupportedFileTypeStrategy strategy = (UploadSupportedFileTypeStrategy) CloudControlManager.getInstance().queryFeatureStrategy("upload-supported-file-types");
        if (strategy == null) {
            strategy = UploadSupportedFileTypeStrategy.createDefault();
        }
        return strategy.getSupportedFileTypeMap();
    }

    public static SpecialTypeMediaStrategy getSpecialTypeMediaStrategy() {
        ScannerStrategy strategy = (ScannerStrategy) CloudControlManager.getInstance().queryFeatureStrategy("media_scanner", ScannerStrategy.CLOUD_FIRST_MERGER);
        if (strategy == null) {
            strategy = ScannerStrategy.createDefault();
        }
        return strategy.getSpecialTypeMediaStrategy();
    }

    public static AssistantScenarioStrategy getAssistantScenarioStrategy() {
        return (AssistantScenarioStrategy) CloudControlManager.getInstance().queryFeatureStrategy("assistant-rules");
    }
}
