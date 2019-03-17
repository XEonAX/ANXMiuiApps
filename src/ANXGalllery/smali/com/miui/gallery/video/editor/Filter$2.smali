.class final Lcom/miui/gallery/video/editor/Filter$2;
.super Ljava/util/HashMap;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 31
    const-string/jumbo v0, "video_editor_filter_origin"

    const-string v1, "NONE"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v0, "video_editor_filter_jiaopian"

    const-string v1, "LUT_XIAOMI_OPIAN"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v0, "video_editor_filter_jingmi"

    const-string v1, "LUT_XIAOMI_GMI"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, "video_editor_filter_wangshi"

    const-string v1, "LUT_XIAOMI_GSHI"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v0, "video_editor_filter_nuancha"

    const-string v1, "LUT_XIAOMI_NCHA"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v0, "video_editor_filter_bailu"

    const-string v1, "LUT_XIAOMI_LU"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v0, "video_editor_filter_qingse"

    const-string v1, "LUT_XIAOMI_GSE"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v0, "video_editor_filter_xiaosenlin"

    const-string v1, "LUT_XIAOMI_OSENLIN"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v0, "video_editor_filter_heibai"

    const-string v1, "LUT_XIAOMI_BAI"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/video/editor/Filter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
