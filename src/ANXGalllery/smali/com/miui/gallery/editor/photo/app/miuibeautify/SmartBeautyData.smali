.class public Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyData;
.super Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;
.source "SmartBeautyData.java"


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;-><init>(SLjava/lang/String;Lcom/miui/filtersdk/beauty/BeautyParameterType;)V

    .line 8
    return-void
.end method
