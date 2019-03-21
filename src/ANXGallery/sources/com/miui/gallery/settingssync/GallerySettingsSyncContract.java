package com.miui.gallery.settingssync;

import android.os.Bundle;
import java.util.List;
import org.json.JSONObject;

public class GallerySettingsSyncContract {

    public interface SyncableSetting {
        String getName();

        String getValue();

        Boolean isEnabled();

        boolean isExport();

        void writeValue(Boolean bool, Object obj);
    }

    public interface Model {
        JSONObject getUploadSettings();

        boolean isDirty();

        void markDirty(boolean z);

        boolean onDownloadSettings(JSONObject jSONObject);
    }

    public interface SyncAdapter {
        void performSync(Bundle bundle);
    }

    public interface Repository {
        List<SyncableSetting> getSyncableSettings();
    }
}
