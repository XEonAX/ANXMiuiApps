package com.xiaomi.channel.commonutils.misc;

public class BuildSettings {
    public static final boolean IsBetaBuild = "BETA".equalsIgnoreCase(ReleaseChannel);
    public static final boolean IsDebugBuild;
    public static final boolean IsDefaultChannel = ReleaseChannel.contains("2A2FE0D7");
    public static final boolean IsForYYBuild = ReleaseChannel.contains("YY");
    public static final boolean IsLogableBuild = "LOGABLE".equalsIgnoreCase(ReleaseChannel);
    public static final boolean IsRCBuild;
    public static boolean IsTestBuild = ReleaseChannel.equalsIgnoreCase("TEST");
    public static final String ReleaseChannel;
    private static int envType;

    static {
        String str;
        boolean z = false;
        if (DebugSwitch.sDebugServerHost) {
            str = "ONEBOX";
        } else {
            str = "@SHIP.TO.2A2FE0D7@";
        }
        ReleaseChannel = str;
        boolean z2 = IsDefaultChannel || "DEBUG".equalsIgnoreCase(ReleaseChannel);
        IsDebugBuild = z2;
        if (ReleaseChannel != null && ReleaseChannel.startsWith("RC")) {
            z = true;
        }
        IsRCBuild = z;
        envType = 1;
        if (ReleaseChannel.equalsIgnoreCase("SANDBOX")) {
            envType = 2;
        } else if (ReleaseChannel.equalsIgnoreCase("ONEBOX")) {
            envType = 3;
        } else {
            envType = 1;
        }
    }

    public static boolean IsSandBoxBuild() {
        return envType == 2;
    }

    public static boolean IsOneBoxBuild() {
        return envType == 3;
    }

    public static int getEnvType() {
        return envType;
    }

    public static void setEnvType(int type) {
        envType = type;
    }
}
