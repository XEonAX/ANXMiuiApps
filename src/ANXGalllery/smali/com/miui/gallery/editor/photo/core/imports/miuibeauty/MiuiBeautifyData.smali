.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;
.super Lcom/miui/gallery/editor/photo/core/Metadata;
.source "MiuiBeautifyData.java"


# instance fields
.field private mParameterType:Lcom/miui/filtersdk/beauty/BeautyParameterType;


# direct methods
.method public constructor <init>(SLjava/lang/String;Lcom/miui/filtersdk/beauty/BeautyParameterType;)V
    .locals 0
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/Metadata;-><init>(SLjava/lang/String;)V

    .line 14
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;->mParameterType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 15
    return-void
.end method
