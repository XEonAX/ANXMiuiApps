.class public Lcom/miui/gallery/video/editor/Filter;
.super Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
.source "Filter.java"


# static fields
.field private static filterIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static filterNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFilterId:Ljava/lang/String;

.field private mIconResId:I

.field private mNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/miui/gallery/video/editor/Filter$1;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/Filter$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/video/editor/Filter;->filterNames:Ljava/util/HashMap;

    .line 29
    new-instance v0, Lcom/miui/gallery/video/editor/Filter$2;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/Filter$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/video/editor/Filter;->filterIds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "nameKey"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;-><init>()V

    .line 12
    iput v0, p0, Lcom/miui/gallery/video/editor/Filter;->mIconResId:I

    .line 13
    iput v0, p0, Lcom/miui/gallery/video/editor/Filter;->mNameResId:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/video/editor/Filter;->mFilterId:Ljava/lang/String;

    .line 44
    iput p1, p0, Lcom/miui/gallery/video/editor/Filter;->mIconResId:I

    .line 45
    iput-object p2, p0, Lcom/miui/gallery/video/editor/Filter;->mType:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "ve_type_extra"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/Filter;->mExtra:Z

    .line 47
    iput-object p3, p0, Lcom/miui/gallery/video/editor/Filter;->mNameKey:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/miui/gallery/video/editor/Filter;->mLabel:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getFilterId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/video/editor/Filter;->mFilterId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/Filter;->filterIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/Filter;->filterIds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/Filter;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/miui/gallery/video/editor/Filter;->filterIds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/Filter;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/Filter;->mFilterId:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/Filter;->mFilterId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/miui/gallery/video/editor/Filter;->mIconResId:I

    return v0
.end method

.method public getNameResId()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/video/editor/Filter;->mNameResId:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/Filter;->filterNames:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/video/editor/Filter;->filterNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/Filter;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/miui/gallery/video/editor/Filter;->filterNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/Filter;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/Filter;->mNameResId:I

    .line 55
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/Filter;->mNameResId:I

    return v0
.end method
