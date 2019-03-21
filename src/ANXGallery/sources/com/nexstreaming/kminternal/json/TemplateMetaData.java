package com.nexstreaming.kminternal.json;

import java.util.ArrayList;

public class TemplateMetaData {

    public static class DefaultEffects {
        public String clip_effect_id;
        public String color_filter_id;
        public String sc_clip_effect_id;
        public String sc_color_effect_id;
    }

    public static class EffectEntry {
        public boolean b_source_change;
        public String clip_effect_id;
        public String color_filter_id;
        public int int_effect_in_duration = -1;
        public int int_effect_out_duration = -1;
        public int int_priority;
        public int int_time;
        public String internal_clip_id;
    }

    public static class Music {
        public DefaultEffects default_effect = null;
        public int int_version;
        public ArrayList<EffectEntry> list_effectEntries;
        public String string_audio_id;
        public String string_title;
    }

    private TemplateMetaData() {
    }
}
