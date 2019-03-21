package miui.module.appstore;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import miui.module.Repository;
import org.json.JSONObject;

public class AppStoreRepository extends Repository {
    private static final Set<String> WHITE_LIST = new HashSet(Arrays.asList(new String[]{"com.miui.system", "com.miui.rom"}));

    public String fetch(File targetFolder, String name) {
        if (TextUtils.isEmpty(name)) {
            return null;
        }
        Builder builder;
        boolean isGlobalBuild = false;
        try {
            Class clazz = Class.forName("miui.os.Build");
            isGlobalBuild = clazz.getField("IS_GLOBAL_BUILD").getBoolean(clazz);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
        }
        if (isGlobalBuild) {
            builder = Uri.parse("https://global.market.xiaomi.com/apm/content/miuiapp/resource?").buildUpon();
        } else {
            builder = Uri.parse("https://app.market.xiaomi.com/apm/content/miuiapp/resource?").buildUpon();
        }
        builder.appendQueryParameter("resourceId", name);
        JSONObject rootObject = NetworkUtils.downloadMetadata(builder.build().toString());
        if (rootObject == null) {
            return null;
        }
        Metadata metadata = Metadata.parse(rootObject);
        if (metadata == null) {
            return null;
        }
        String fileUrl = metadata.mHost + metadata.mUrl;
        File file = new File(targetFolder, metadata.mResourceId);
        if (NetworkUtils.downloadFile(fileUrl, file) && file.exists() && MD5Utils.checkMD5(file, metadata.mFileHash)) {
            return metadata.mResourceId;
        }
        return null;
    }

    public boolean contains(String name) {
        if (WHITE_LIST.contains(name)) {
            return false;
        }
        return true;
    }
}
