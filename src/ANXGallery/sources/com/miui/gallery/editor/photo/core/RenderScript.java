package com.miui.gallery.editor.photo.core;

import android.util.ArrayMap;
import android.util.Property;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.List;
import java.util.Map;

public class RenderScript {
    public static final Dispatcher DISPATCHER = new Dispatcher();

    public static final class Dispatcher {
        private Translator[] mTranslators = new Translator[Effect.values().length];

        Dispatcher() {
        }
    }

    public static abstract class JsonProperty<T, V> extends Property<T, V> {
        public JsonProperty(Class<V> type, String name) {
            super(type, name);
        }
    }

    public static abstract class Translator<T extends RenderData> {
        private final Map<String, JsonProperty<T, ?>> mProperties;

        protected Translator(List<JsonProperty<T, ?>> propertyList) {
            this.mProperties = new ArrayMap(propertyList.size() + 1);
            for (JsonProperty<T, ?> property : propertyList) {
                this.mProperties.put(property.getName(), property);
            }
            if (this.mProperties.get(nexExportFormat.TAG_FORMAT_TYPE) != null) {
                throw new IllegalArgumentException("can't use 'type' for property.");
            }
            this.mProperties.put(nexExportFormat.TAG_FORMAT_TYPE, new Type());
        }
    }

    private static final class Type<T extends RenderData> extends JsonProperty<T, Effect> {
        public Type() {
            super(Effect.class, nexExportFormat.TAG_FORMAT_TYPE);
        }

        public Effect get(RenderData obj) {
            return obj.mType;
        }

        public void set(RenderData obj, Effect value) {
            obj.mType = value;
        }
    }
}
