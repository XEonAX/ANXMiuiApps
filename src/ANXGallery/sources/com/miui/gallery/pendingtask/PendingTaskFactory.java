package com.miui.gallery.pendingtask;

import com.miui.gallery.assistant.library.DeleteLibraryTask;
import com.miui.gallery.assistant.library.LibraryDownloadTask;
import com.miui.gallery.assistant.process.ExistImageFeatureChargingTask;
import com.miui.gallery.assistant.process.ExistImageFeatureTask;
import com.miui.gallery.card.preprocess.ScenarioAlbumChargingTask;
import com.miui.gallery.card.preprocess.ScenarioAlbumTask;
import com.miui.gallery.cloudcontrol.CloudControlPendingTask;
import com.miui.gallery.discovery.PrintSilentInstallTask;
import com.miui.gallery.pendingtask.base.PendingTask;

public class PendingTaskFactory {
    public static PendingTask create(int taskType) {
        switch (taskType) {
            case 2:
                return new ScenarioAlbumTask(taskType);
            case 3:
                return new CloudControlPendingTask(taskType);
            case 4:
                return new PrintSilentInstallTask(taskType);
            case 6:
                return new ExistImageFeatureTask(taskType);
            case 7:
                return new LibraryDownloadTask(taskType);
            case 8:
                return new DeleteLibraryTask(taskType);
            case 9:
                return new ExistImageFeatureChargingTask(taskType);
            case 10:
                return new ScenarioAlbumChargingTask(taskType);
            default:
                return null;
        }
    }
}
