package com.miui.gallery.data;

import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Utils;
import java.io.File;
import java.util.List;

public class LocalUbifocus extends Ubifocus {

    public static class SubFile {
        public String mFilePath;
        public int mIndex;

        public SubFile(String filePath, int index) {
            this.mFilePath = filePath;
            this.mIndex = index;
        }

        public String getFilePath() {
            return this.mFilePath;
        }
    }

    public static int getUbifocusSubFiles(String filePath, List<SubFile> subFiles) {
        boolean z;
        String fileName = FileUtils.getFileName(filePath);
        String prefix = getUbifocusPrefixIgnoreCase(fileName);
        int outerFileIndex = -1;
        subFiles.clear();
        if (isOuterFile(fileName, prefix)) {
            String pathPrefix = new StringBuilder(getSubUbiFolder(FileUtils.getParentFolderPath(filePath))).append(File.separator).append(prefix).append("_").toString();
            StringBuilder subUbiJpgPath = new StringBuilder();
            StringBuilder subUbiMapPath = new StringBuilder();
            for (int i = 0; i < 100; i++) {
                subUbiJpgPath.setLength(0);
                subUbiJpgPath.append(pathPrefix).append(i);
                subUbiJpgPath.append(".jpg");
                boolean jpgExists = new File(subUbiJpgPath.toString()).exists();
                boolean mapExists = false;
                if (!jpgExists) {
                    subUbiMapPath.setLength(0);
                    subUbiMapPath.append(pathPrefix).append(i);
                    subUbiMapPath.append(".y");
                    mapExists = new File(subUbiMapPath.toString()).exists();
                }
                if (!jpgExists) {
                    if (!mapExists) {
                        if (outerFileIndex != -1) {
                            break;
                        }
                        outerFileIndex = i;
                        subFiles.add(new SubFile(filePath, outerFileIndex));
                    } else {
                        subFiles.add(new SubFile(subUbiMapPath.toString(), i));
                        break;
                    }
                }
                subFiles.add(new SubFile(subUbiJpgPath.toString(), i));
            }
        }
        if (outerFileIndex == -1 || subFiles.size() <= 0 || !((SubFile) subFiles.get(subFiles.size() - 1)).mFilePath.endsWith(".y")) {
            outerFileIndex = -1;
            subFiles.clear();
        }
        if (outerFileIndex != -1 || subFiles.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        Utils.assertTrue(z);
        return outerFileIndex;
    }

    public static List<SubFile> getUbifocusSubFiles(String filePath) {
        List<SubFile> subFiles = Lists.newArrayList();
        getUbifocusSubFiles(filePath, subFiles);
        return subFiles;
    }

    public static String getSubUbiFolder(String folderPath) {
        return folderPath + File.separator + ".ubifocus";
    }

    private static String getUbifocusPrefixIgnoreCase(String ubifocusFileName) {
        return getUbifocusPrefix(ubifocusFileName.toUpperCase());
    }

    public static String getUbifocusPrefix(String ubifocusFileName) {
        int index = getUbifocusPatternIndex(ubifocusFileName);
        if (index >= 0) {
            return ubifocusFileName.substring(0, "_UBIFOCUS".length() + index);
        }
        return "";
    }

    public static int getUbifocusPatternIndex(String ubifocusFileName) {
        if (TextUtils.isEmpty(ubifocusFileName)) {
            return -1;
        }
        return ubifocusFileName.indexOf("_UBIFOCUS");
    }

    public static boolean isUbifocusImage(String filePath) {
        String fileName = FileUtils.getFileName(filePath);
        return isOuterFile(fileName, getUbifocusPrefixIgnoreCase(fileName));
    }

    private static boolean isOuterFile(String fileName, String prefix) {
        return !TextUtils.isEmpty(prefix) && fileName.equals(prefix + ".jpg");
    }

    public static boolean isOuterFile(String fileName) {
        return isOuterFile(fileName, getUbifocusPrefixIgnoreCase(fileName));
    }

    public static String createInnerFileName(String oneSubFileName, int subFocusIndex, int subUbiCount) {
        String innerFileName = oneSubFileName;
        if (!isOuterFile(oneSubFileName)) {
            return innerFileName;
        }
        return new StringBuilder(getUbifocusPrefixIgnoreCase(oneSubFileName)).append("_").append(subFocusIndex).append(subFocusIndex == subUbiCount + -1 ? ".y" : ".jpg").toString();
    }

    public static int getMainFileIndex() {
        return 2;
    }
}
