package com.nexstreaming.nexeditorsdk.module;

import com.nexstreaming.nexeditorsdk.nexExportFormat;

public interface nexExternalExportProvider extends nexExternalExportMethod, nexModuleProvider {
    public static final String[] nexExportFormatMandatoryKeys = new String[]{nexExportFormat.TAG_FORMAT_TYPE, nexExportFormat.TAG_FORMAT_PATH, nexExportFormat.TAG_FORMAT_WIDTH, nexExportFormat.TAG_FORMAT_HEIGHT, nexExportFormat.TAG_FORMAT_INTERVAL_TIME, nexExportFormat.TAG_FORMAT_START_TIME, nexExportFormat.TAG_FORMAT_END_TIME};
    public static final String[] nexExportFormatOptionalKeys = new String[]{nexExportFormat.TAG_FORMAT_UUID, nexExportFormat.TAG_FORMAT_QUALITY};
}
