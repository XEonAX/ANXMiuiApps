package com.miui.gallery.cloudcontrol;

import android.text.TextUtils;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Type;

public class FeatureProfile {
    @SerializedName("name")
    protected String mName;
    @SerializedName("status")
    protected String mStatus;
    @SerializedName("strategy")
    protected String mStrategy;

    public static class Deserializer implements JsonDeserializer<FeatureProfile> {
        public FeatureProfile deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
            FeatureProfile featureProfile = new FeatureProfile();
            JsonObject jsonObject = json.getAsJsonObject();
            if (jsonObject.has("name")) {
                featureProfile.setName(jsonObject.getAsJsonPrimitive("name").getAsString());
            }
            if (jsonObject.has("strategy")) {
                JsonElement strategy = jsonObject.get("strategy");
                if (strategy.isJsonPrimitive()) {
                    featureProfile.setStrategy(strategy.getAsString());
                } else {
                    featureProfile.setStrategy(strategy.toString());
                }
            }
            if (jsonObject.has("status")) {
                featureProfile.setStatus(jsonObject.getAsJsonPrimitive("status").getAsString());
            }
            return featureProfile;
        }
    }

    public enum Status {
        ENABLE("enable"),
        DISABLE("disable"),
        REMOVE("remove"),
        UNAVAILABLE("unavailable");
        
        private String value;

        private Status(String value) {
            this.value = value;
        }

        public String getValue() {
            return this.value;
        }

        public static Status fromValue(String value) {
            for (Status status : values()) {
                if (status.value.equals(value)) {
                    return status;
                }
            }
            return UNAVAILABLE;
        }
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String name) {
        this.mName = name;
    }

    public String getStatus() {
        return this.mStatus;
    }

    public void setStatus(String status) {
        this.mStatus = status;
    }

    public String getStrategy() {
        return this.mStrategy;
    }

    public void setStrategy(String strategy) {
        this.mStrategy = strategy;
    }

    public int hashCode() {
        int result = 17;
        if (this.mName != null) {
            result = this.mName.hashCode() + 527;
        }
        if (this.mStatus != null) {
            result = (result * 31) + this.mStatus.hashCode();
        }
        if (this.mStrategy != null) {
            return (result * 31) + this.mStrategy.hashCode();
        }
        return result;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FeatureProfile)) {
            return false;
        }
        FeatureProfile other = (FeatureProfile) obj;
        if (TextUtils.equals(this.mName, other.getName()) && TextUtils.equals(this.mStrategy, other.getStrategy()) && TextUtils.equals(this.mStatus, other.getStatus())) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "FeatureProfile{mName='" + this.mName + '\'' + ", mStatus='" + this.mStatus + '\'' + ", mStrategy='" + this.mStrategy + '\'' + '}';
    }
}
