package com.miui.gallery.net.library;

import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.assistant.library.Library;
import com.miui.gallery.assistant.library.LibraryConstants;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.json.BaseJsonRequest;
import com.miui.gallery.util.BaseMiscUtil;
import org.json.JSONObject;

public class LibraryRequest extends BaseGalleryRequest {
    private final long mLibraryId;

    public LibraryRequest(long id) {
        super(0, "https://i.mi.com/gallery/public/resource/info/v2");
        this.mLibraryId = id;
        addParam("nameSpace", "miui_assistant");
        addParam("group", String.valueOf(this.mLibraryId));
        addParam("key", LibraryConstants.CURRENT_ABI);
        setUseCache(false);
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        try {
            Library libraryRespons = (Library) BaseJsonRequest.fromJson(data.toString(), new TypeToken<Library>() {
            }.getType());
            if (libraryRespons == null || !BaseMiscUtil.isValid(libraryRespons.getLibraryItems())) {
                libraryRespons = null;
            } else {
                libraryRespons.setLibraryId(this.mLibraryId);
            }
            deliverResponse(libraryRespons);
        } catch (JsonParseException e) {
            e.printStackTrace();
            deliverError(ErrorCode.PARSE_ERROR, e.getMessage(), data);
        } catch (Exception e2) {
            e2.printStackTrace();
            deliverError(ErrorCode.HANDLE_ERROR, e2.getMessage(), data);
        }
    }
}
