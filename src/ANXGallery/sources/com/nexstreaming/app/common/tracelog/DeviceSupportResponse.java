package com.nexstreaming.app.common.tracelog;

import com.nexstreaming.app.common.tracelog.TLP.BaseResponse;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class DeviceSupportResponse implements BaseResponse {
    public DeviceInfo device_info;
    public MatchInfo match_info;
    public int next;
    public int result;

    public static class DeviceInfo {
        public int audio_codec_count;
        public List<ExportResInfo> export_res_extra;
        public List<ExportResInfo> export_res_hw;
        public List<ExportResInfo> export_res_sw;
        public int max_codec_mem_size;
        public int max_dec_count;
        public int max_dec_res_hw_b;
        public int max_dec_res_hw_h;
        public int max_dec_res_hw_m;
        public int max_dec_res_nexsw_b;
        public int max_dec_res_nexsw_h;
        public int max_dec_res_nexsw_m;
        public int max_dec_res_sw_b;
        public int max_dec_res_sw_h;
        public int max_dec_res_sw_m;
        public int max_enc_count;
        public int max_fhd_trans_time;
        public int max_fps;
        public int max_hw_import_res;
        public int max_sw_import_res;
        public Map<String, String> properties;
        public int rec_image_mode;
        public int rec_video_mode;
        public int support_avc;
        public int support_mpeg4v;
        public int supported;

        public String toString() {
            int i;
            StringBuilder append;
            int i2;
            int i3 = 0;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("DeviceSupportResponse:\n");
            stringBuilder.append("  support_avc:");
            stringBuilder.append(this.support_avc);
            stringBuilder.append(10);
            stringBuilder.append("  support_mpeg4v:");
            stringBuilder.append(this.support_mpeg4v);
            stringBuilder.append(10);
            stringBuilder.append("  max_fps:");
            stringBuilder.append(this.max_fps);
            stringBuilder.append(10);
            stringBuilder.append("  max_codec_mem_size:");
            stringBuilder.append(this.max_codec_mem_size);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_count:");
            stringBuilder.append(this.max_dec_count);
            stringBuilder.append(10);
            stringBuilder.append("  max_enc_count:");
            stringBuilder.append(this.max_enc_count);
            stringBuilder.append(10);
            stringBuilder.append("  max_fhd_trans_time:");
            stringBuilder.append(this.max_fhd_trans_time);
            stringBuilder.append(10);
            stringBuilder.append("  rec_image_mode:");
            stringBuilder.append(this.rec_image_mode);
            stringBuilder.append(10);
            stringBuilder.append("  rec_video_mode:");
            stringBuilder.append(this.rec_video_mode);
            stringBuilder.append(10);
            stringBuilder.append("  audio_codec_count:");
            stringBuilder.append(this.audio_codec_count);
            stringBuilder.append(10);
            stringBuilder.append("  max_sw_import_res:");
            stringBuilder.append(this.max_sw_import_res);
            stringBuilder.append(10);
            stringBuilder.append("  max_hw_import_res:");
            stringBuilder.append(this.max_hw_import_res);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_nexsw_b:");
            stringBuilder.append(this.max_dec_res_nexsw_b);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_nexsw_b:");
            stringBuilder.append(this.max_dec_res_nexsw_b);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_nexsw_h:");
            stringBuilder.append(this.max_dec_res_nexsw_h);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_sw_b:");
            stringBuilder.append(this.max_dec_res_sw_b);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_sw_m:");
            stringBuilder.append(this.max_dec_res_sw_m);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_sw_h:");
            stringBuilder.append(this.max_dec_res_sw_h);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_hw_b:");
            stringBuilder.append(this.max_dec_res_hw_b);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_hw_m:");
            stringBuilder.append(this.max_dec_res_hw_m);
            stringBuilder.append(10);
            stringBuilder.append("  max_dec_res_hw_h:");
            stringBuilder.append(this.max_dec_res_hw_h);
            stringBuilder.append(10);
            if (this.export_res_sw == null) {
                stringBuilder.append("  export_res_sw: null\n");
            } else {
                stringBuilder.append("  export_res_sw:\n");
                i = 0;
                for (ExportResInfo exportResInfo : this.export_res_sw) {
                    append = new StringBuilder().append("    [");
                    i2 = i + 1;
                    stringBuilder.append(append.append(i).append("] ").append(exportResInfo.toString()).append("\n").toString());
                    i = i2;
                }
            }
            if (this.export_res_hw == null) {
                stringBuilder.append("  export_res_hw: null\n");
            } else {
                stringBuilder.append("  export_res_hw:\n");
                i = 0;
                for (ExportResInfo exportResInfo2 : this.export_res_hw) {
                    append = new StringBuilder().append("    [");
                    i2 = i + 1;
                    stringBuilder.append(append.append(i).append("] ").append(exportResInfo2.toString()).append("\n").toString());
                    i = i2;
                }
            }
            if (this.export_res_extra == null) {
                stringBuilder.append("  export_res_extra: null\n");
            } else {
                stringBuilder.append("  export_res_extra:\n");
                for (ExportResInfo exportResInfo22 : this.export_res_extra) {
                    StringBuilder append2 = new StringBuilder().append("    [");
                    i = i3 + 1;
                    stringBuilder.append(append2.append(i3).append("] ").append(exportResInfo22.toString()).append("\n").toString());
                    i3 = i;
                }
            }
            if (this.properties == null) {
                stringBuilder.append("  properties: null\n");
            } else {
                stringBuilder.append("  properties:\n");
                for (Entry entry : this.properties.entrySet()) {
                    stringBuilder.append("    " + ((String) entry.getKey()) + "=" + ((String) entry.getValue()));
                }
            }
            return stringBuilder.toString();
        }
    }

    public static class ExportResInfo {
        public int bitrate;
        public int display_height;
        public int height;
        public int width;

        public String toString() {
            return "<ExportResInfo " + this.width + "x" + this.height + " disp=" + this.display_height + " bitrate=" + this.bitrate + ">";
        }
    }

    public static class MatchInfo {
        public String board_platform;
        public String build_device;
        public String build_model;
        public String manufacturer;
        public int os_api_level_max;
        public int os_api_level_min;
        public Integer record_idx;

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("MatchInfo:\n");
            stringBuilder.append("  record_idx:");
            stringBuilder.append(this.record_idx);
            stringBuilder.append(10);
            stringBuilder.append("  build_device:");
            stringBuilder.append(this.build_device);
            stringBuilder.append(10);
            stringBuilder.append("  build_model:");
            stringBuilder.append(this.build_model);
            stringBuilder.append(10);
            stringBuilder.append("  board_platform:");
            stringBuilder.append(this.board_platform);
            stringBuilder.append(10);
            stringBuilder.append("  manufacturer:");
            stringBuilder.append(this.manufacturer);
            stringBuilder.append(10);
            stringBuilder.append("  os_api_level_min:");
            stringBuilder.append(this.os_api_level_min);
            stringBuilder.append(10);
            stringBuilder.append("  os_api_level_max:");
            stringBuilder.append(this.os_api_level_max);
            stringBuilder.append(10);
            return stringBuilder.toString();
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("DeviceSupportResponse:\n");
        stringBuilder.append("  result:");
        stringBuilder.append(this.result);
        stringBuilder.append(10);
        stringBuilder.append("  next:");
        stringBuilder.append(this.next);
        stringBuilder.append(10);
        if (this.match_info == null) {
            stringBuilder.append("  match_info: null\n");
        } else {
            stringBuilder.append("  match_info:\n");
            stringBuilder.append(this.match_info.toString().replaceAll("(?m)^", "    "));
        }
        if (this.device_info == null) {
            stringBuilder.append("  device_info: null\n");
        } else {
            stringBuilder.append("  device_info:\n");
            stringBuilder.append(this.device_info.toString().replaceAll("(?m)^", "    "));
        }
        return stringBuilder.toString();
    }

    public int getResult() {
        return this.result;
    }
}
