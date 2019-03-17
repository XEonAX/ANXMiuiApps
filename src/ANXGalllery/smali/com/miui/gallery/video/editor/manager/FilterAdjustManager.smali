.class public Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;
.super Ljava/lang/Object;
.source "FilterAdjustManager.java"


# static fields
.field private static filterIcons:[I

.field private static sAdjustMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFilterName:[Ljava/lang/String;

.field private static sFilterNameKeys:[Ljava/lang/String;

.field private static sFilterTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 34
    new-instance v0, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager$1;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sAdjustMap:Ljava/util/HashMap;

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->filterIcons:[I

    .line 72
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "ve_type_none"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ve_type_local"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ve_type_local"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ve_type_local"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "ve_type_local"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ve_type_local"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ve_type_local"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ve_type_local"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ve_type_local"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sFilterTypes:[Ljava/lang/String;

    .line 83
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "video_editor_filter_origin"

    aput-object v1, v0, v4

    const-string/jumbo v1, "video_editor_filter_jiaopian"

    aput-object v1, v0, v5

    const-string/jumbo v1, "video_editor_filter_jingmi"

    aput-object v1, v0, v6

    const-string/jumbo v1, "video_editor_filter_wangshi"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "video_editor_filter_nuancha"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "video_editor_filter_bailu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "video_editor_filter_qingse"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "video_editor_filter_xiaosenlin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "video_editor_filter_heibai"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sFilterNameKeys:[Ljava/lang/String;

    .line 95
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "\u539f\u56fe"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u80f6\u7247"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u9759\u8c27"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u5f80\u4e8b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "\u6696\u8336"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u767d\u9732"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u9752\u6da9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u5c0f\u68ee\u6797"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u9ed1\u767d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sFilterName:[Ljava/lang/String;

    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f02031f
        0x7f02031c
        0x7f02031d
        0x7f020321
        0x7f02031e
        0x7f02031a
        0x7f020320
        0x7f020322
        0x7f02031b
    .end array-data
.end method

.method public static getAdjustData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/FilterAdjustData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x5

    new-array v7, v0, [Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    const/4 v8, 0x0

    new-instance v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 46
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02002d

    const/4 v5, 0x1

    sget-object v6, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sAdjustMap:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;-><init>(ISLjava/lang/String;IZLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    const/4 v1, 0x3

    const/16 v2, 0xa

    .line 47
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020030

    const/4 v5, 0x0

    sget-object v6, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sAdjustMap:Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;-><init>(ISLjava/lang/String;IZLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    const/4 v1, 0x1

    const/16 v2, 0xa

    .line 48
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02002e

    const/4 v5, 0x1

    sget-object v6, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sAdjustMap:Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;-><init>(ISLjava/lang/String;IZLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 49
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02002f

    const/4 v5, 0x1

    sget-object v6, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sAdjustMap:Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;-><init>(ISLjava/lang/String;IZLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    const/4 v1, 0x4

    const/16 v2, 0xa

    .line 50
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020031

    const/4 v5, 0x0

    sget-object v6, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sAdjustMap:Ljava/util/HashMap;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/model/FilterAdjustData;-><init>(ISLjava/lang/String;IZLjava/lang/String;)V

    aput-object v0, v7, v8

    .line 45
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFilterData()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/Filter;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sFilterNameKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 56
    new-instance v1, Lcom/miui/gallery/video/editor/Filter;

    sget-object v3, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->filterIcons:[I

    aget v3, v3, v2

    sget-object v4, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sFilterTypes:[Ljava/lang/String;

    aget-object v4, v4, v2

    sget-object v5, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sFilterNameKeys:[Ljava/lang/String;

    aget-object v5, v5, v2

    sget-object v6, Lcom/miui/gallery/video/editor/manager/FilterAdjustManager;->sFilterName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/gallery/video/editor/Filter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v1, "filter":Lcom/miui/gallery/video/editor/Filter;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "filter":Lcom/miui/gallery/video/editor/Filter;
    :cond_0
    return-object v0
.end method
