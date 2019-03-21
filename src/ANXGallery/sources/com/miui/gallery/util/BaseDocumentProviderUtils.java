package com.miui.gallery.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.support.v4.provider.DocumentFile;
import android.text.TextUtils;
import com.miui.gallery.preference.BaseGalleryPreferences.BaseDocumentProvider;
import java.io.File;
import java.io.FileOutputStream;

public class BaseDocumentProviderUtils {

    public interface WriteHandler<T> {
        T handle(FileOutputStream fileOutputStream);
    }

    public static boolean needUseDocumentProvider(String path) {
        return VERSION.SDK_INT >= 28 && StorageUtils.isInSecondaryStorage(path);
    }

    public static boolean needRequestExternalSDCardPermission(Context context) {
        if (VERSION.SDK_INT >= 28 && StorageUtils.hasExternalSDCard(context) && TextUtils.isEmpty(BaseDocumentProvider.getExternalSDCardUri())) {
            return true;
        }
        return false;
    }

    public static DocumentFile getDocumentFile(Context context, File file) {
        return getDocumentFileOrDir(context, file, false);
    }

    public static DocumentFile getDocumentFileDirectory(Context context, File file) {
        return getDocumentFileOrDir(context, file, true);
    }

    public static ParcelFileDescriptor openFileDescriptor(Context context, String filePath) {
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (context == null || TextUtils.isEmpty(filePath)) {
            return parcelFileDescriptor;
        }
        try {
            DocumentFile documentFile = getDocumentFile(context, new File(filePath));
            if (documentFile != null) {
                return context.getContentResolver().openFileDescriptor(documentFile.getUri(), "rw");
            }
            Log.e("BaseDocumentProviderUtils", "Failed to get document for file %s", (Object) filePath);
            return parcelFileDescriptor;
        } catch (Exception e) {
            Log.e("BaseDocumentProviderUtils", "Failed to get file descriptor for %s, %s", filePath, e);
            return parcelFileDescriptor;
        }
    }

    public static <T> T safeWriteFile(String absoluteFilePath, WriteHandler<T> writerHandler) {
        T t = null;
        ParcelFileDescriptor pfd = null;
        Context context = StaticContext.sGetAndroidContext();
        try {
            FileOutputStream out;
            if (needUseDocumentProvider(absoluteFilePath)) {
                pfd = openFileDescriptor(context, absoluteFilePath);
                if (pfd == null) {
                    return t;
                }
                out = new FileOutputStream(pfd.getFileDescriptor());
            } else {
                out = new FileOutputStream(absoluteFilePath);
            }
            t = writerHandler.handle(out);
            BaseMiscUtil.closeSilently(out);
            BaseMiscUtil.closeSilently(pfd);
        } catch (Object e) {
            Log.e("BaseDocumentProviderUtils", "Failed to write file: %s", e);
        } finally {
            BaseMiscUtil.closeSilently(null);
            BaseMiscUtil.closeSilently(pfd);
        }
        return t;
    }

    private static DocumentFile getDocumentFileOrDir(Context context, File file, boolean isDir) {
        if (context == null) {
            Log.d("BaseDocumentProviderUtils", "getDocumentFileOrDir context null");
            return null;
        }
        String baseFolder = StorageUtils.getVolumePath(context, file.getAbsolutePath());
        if (baseFolder == null) {
            Log.d("BaseDocumentProviderUtils", "getDocumentFileOrDir basefolder null");
            return null;
        }
        boolean originalDirectory = false;
        String relativePath = StorageUtils.getRelativePath(context, file.getAbsolutePath());
        if (relativePath == StorageUtils.KEY_FOR_EMPTY_RELATIVE_PATH) {
            originalDirectory = true;
        }
        String uri = BaseDocumentProvider.getUri(baseFolder);
        if (TextUtils.isEmpty(uri)) {
            return null;
        }
        DocumentFile volumeDocument = DocumentFile.fromTreeUri(context, Uri.parse(uri));
        if (originalDirectory) {
            return volumeDocument;
        }
        String mimeType = BaseFileMimeUtil.getMimeType(file.getAbsolutePath());
        String[] parts = relativePath.split(File.separator);
        int i = 0;
        while (i < parts.length) {
            try {
                DocumentFile nextDocument = findFileIgnoreCase(volumeDocument, parts[i]);
                if (nextDocument == null) {
                    if (i < parts.length - 1 || file.isDirectory() || isDir) {
                        nextDocument = volumeDocument.createDirectory(parts[i]);
                        if (nextDocument == null) {
                            return null;
                        }
                    } else {
                        nextDocument = volumeDocument.createFile(mimeType, parts[i]);
                    }
                }
                volumeDocument = nextDocument;
                i++;
            } catch (Throwable e) {
                Log.e("BaseDocumentProviderUtils", e);
                return null;
            }
        }
        return volumeDocument;
    }

    private static DocumentFile findFileIgnoreCase(DocumentFile rootDoc, String displayName) {
        for (DocumentFile doc : rootDoc.listFiles()) {
            if (displayName.equalsIgnoreCase(doc.getName())) {
                return doc;
            }
        }
        return null;
    }
}
