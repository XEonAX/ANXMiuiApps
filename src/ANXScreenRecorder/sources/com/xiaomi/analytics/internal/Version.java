package com.xiaomi.analytics.internal;

public class Version implements Comparable<Version> {
    public int build = 0;
    public int major = 1;
    public int minor = 0;

    public Version(int major, int minor, int build) {
        this.major = major;
        this.minor = minor;
        this.build = build;
    }

    public Version(String version) {
        try {
            String[] split = version.split("\\.");
            this.major = Integer.parseInt(split[0]);
            this.minor = Integer.parseInt(split[1]);
            this.build = Integer.parseInt(split[2]);
        } catch (Exception e) {
        }
    }

    public boolean equalsIgnoreBuild(Version v) {
        if (v != null && this.major == v.major && this.minor == v.minor) {
            return true;
        }
        return false;
    }

    public int compareTo(Version v) {
        if (v == null) {
            return 1;
        }
        if (this.major != v.major) {
            return this.major - v.major;
        }
        if (this.minor != v.minor) {
            return this.minor - v.minor;
        }
        return this.build - v.build;
    }

    public String toString() {
        return this.major + "." + this.minor + "." + this.build;
    }
}
